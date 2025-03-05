import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/pages/screens/account_page.dart';
import 'package:valstore/presentation/pages/screens/home_page.dart';
import 'package:valstore/presentation/pages/bottomsheet/page/login_rso_page.dart';
import 'package:valstore/presentation/pages/screens/match_history_page.dart';

import '../viewmodel/main_viewmodel.dart';
import 'bottomsheet/login_bottom_sheet.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BaseWidget<MainViewModel, MainPage> {

  List<Widget> navWidgets = [
    const HomePage(title: "Daily Market",),
    const MatchHistoryPage(title: "Match History"),
    const AccountPage(title: "My Account")
  ];

  @override
  void onPresented() async {
    if(viewModel.sharedPreferences.getString("accessToken") != null
        && viewModel.sharedPreferences.get("idToken") != null) {
      await viewModel.getEntitleToken(
          viewModel.sharedPreferences.getString("accessToken") ?? "",
          viewModel.sharedPreferences.getString("idToken") ?? "", (token) async {
        await viewModel.refreshStorefront(token.entitlementToken, (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
              SnackBar(
                content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                duration: const Duration(seconds: 2), //올라와있는 시간
              )
          );
        });
        await viewModel.getMatchHistories(token.entitlementToken, (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            //SnackBar 구현하는법 context는 위에 BuildContext에 있는 객체를 그대로 가져오면 됨.
              SnackBar(
                content: Text(message), //snack bar의 내용. icon, button같은것도 가능하다.
                duration: const Duration(seconds: 2), //올라와있는 시간
              )
          );
        });
        await viewModel.getPlayerLoadOut(token.entitlementToken, (message) {
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
  }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<MainViewModel>(
        create: (_) => viewModel,
        child: navWidgets[viewModel.selectedIndex],
      ),
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
        } : showRiotLoginBottomSheet(context, viewModel),
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
}
