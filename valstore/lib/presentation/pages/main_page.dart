import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/pages/screens/account_page.dart';
import 'package:valstore/presentation/pages/screens/home_page.dart';
import 'package:valstore/presentation/pages/bottomsheet/page/login_rso_page.dart';
import 'package:valstore/presentation/pages/screens/match_history_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../util.dart';
import '../viewmodel/main_viewmodel.dart';
import 'bottomsheet/login_bottom_sheet.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends BaseStatefulWidget<MainViewModel> {

  late WebViewController webViewController;
  List<Widget> navWidgets = [];


  Future<void> clearCache() async {
    await webViewController.clearCache();
    await webViewController.clearLocalStorage();

    webViewController.loadRequest(Uri.parse(rsoRiotLoginUrl));
  }

  void _handleRedirect(BuildContext context, String url) {
    Uri uri = Uri.parse(url);

    // 예제: URL에서 access_token과 id_token을 추출
    String? fragment = uri.fragment; // URL Fragment 부분 가져오기
    if (fragment.isNotEmpty) {
      Map<String, String> params = Uri.splitQueryString(fragment);
      String? accessToken = params["access_token"];
      String? idToken = params["id_token"];

      if (accessToken != null && idToken != null) {
        extractPlayerUUID(idToken);
        Navigator.of(context).pop({
          "accessToken" : accessToken,
          "idToken" : idToken
        });
      }
    }
  }

  @override
  void initState() {
    navWidgets = [
      const HomePage(title: "Daily Market",),
      const MatchHistoryPage(title: "Match History"),
      AccountPage(title: "My Account", eventSignOut: clearCache)
    ];

    try {
      webViewController = WebViewController()
        ..setNavigationDelegate(
          NavigationDelegate(
            onNavigationRequest: (NavigationRequest request) {
              // 리다이렉트 URL 감지
              if (request.url.startsWith('https://playvalorant.com/opt_in')) {
                _handleRedirect(context, request.url);
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(rsoRiotLoginUrl))
        ..setJavaScriptMode(JavaScriptMode.unrestricted);
    } catch (e, stack) {
      debugPrint("❌ WebView cache clear error: $e\n$stack");
    }

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if(viewModel.sharedPreferences.getString("accessToken") != null
          && viewModel.sharedPreferences.get("idToken") != null) {
        await viewModel.getEntitleToken(
            viewModel.sharedPreferences.getString("accessToken") ?? "",
            viewModel.sharedPreferences.getString("idToken") ?? "", (token) async {
          await viewModel.fetchWholeValorantApis(token, (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
                SnackBar(
                  content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                  duration: const Duration(seconds: 2), //올라와있는 시간
                )
            );
          });
        }, (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
              SnackBar(
                content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                duration: const Duration(seconds: 2), //올라와있는 시간
              )
          );
        });
      }
    });
    super.initState();
  }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Consumer<MainViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            body: navWidgets[viewModel.selectedIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () async => viewModel.hasSigned ? {
                await viewModel.getEntitleToken(viewModel.accessToken, viewModel.idToken, (token) async {
                  await viewModel.fetchValorantApisByIndex(token, (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
                        SnackBar(
                          content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                          duration: const Duration(seconds: 2), //올라와있는 시간
                        )
                    );
                  });
                }, (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
                      SnackBar(
                        content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                        duration: const Duration(seconds: 2), //올라와있는 시간
                      )
                  );
                })
              } : showRiotLoginBottomSheet(context, webViewController, viewModel),
              tooltip: viewModel.hasSigned ? 'Refresh Shop' : 'RSO SignIn',
              child: viewModel.hasSigned ? const Icon(Icons.refresh) : const Icon(Icons.login),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.store),
                  label: 'Daily Market',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'Match History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Account',
                ),
              ],
              currentIndex: viewModel.selectedIndex,
              selectedItemColor: Colors.lightGreen,
              onTap: (index) => viewModel.onSelectIndex(index, (message) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
                    SnackBar(
                      content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                      duration: const Duration(seconds: 2), //올라와있는 시간
                    )
                )
              }),
            ),
          );
        }
    );
  }
}