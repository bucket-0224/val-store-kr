import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../util.dart';
import 'page/login_rso_page.dart';

Future<void> showRiotLoginBottomSheet(BuildContext context, MainViewModel viewModel, handleRedirect) async {

  WebViewController webViewController = WebViewController()
    ..setNavigationDelegate(
      NavigationDelegate(
        onNavigationRequest: (NavigationRequest request) {
          // 리다이렉트 URL 감지
          if (request.url.startsWith('https://playvalorant.com/opt_in')) {
            handleRedirect(context, request.url);

            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(rsoRiotLoginUrl))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);


  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: const Color.fromRGBO(22, 21, 25, 1.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => RiotLoginPage(webViewController: webViewController,),
  ).then((data) async {
    if(data != null) {
      await viewModel.getEntitleToken(data['accessToken'], data['idToken'], (token) async {
        await viewModel.fetchWholeValorantApis(token, (message) {
          Fluttertoast.showToast(
              msg: message,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black54,
              textColor: Colors.white,
              fontSize: 16.0
          );
        });
      }, (message) {
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black54,
            textColor: Colors.white,
            fontSize: 16.0
        );
      });
    }
  });
}