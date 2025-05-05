import 'package:flutter/material.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'page/login_rso_page.dart';

void showRiotLoginBottomSheet(BuildContext context, WebViewController controller, MainViewModel viewModel) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: const Color.fromRGBO(22, 21, 25, 1.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => RiotLoginPage(webViewController: controller,),
  ).then((data) async {
    if(data != null) {
      await viewModel.getEntitleToken(data['accessToken'], data['idToken'], (token) async {
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
}