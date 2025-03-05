import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

import '../../../util.dart';

class RiotLoginPage extends StatefulWidget {
  const RiotLoginPage({super.key});

  @override
  _RiotLoginPageState createState() => _RiotLoginPageState();
}

class _RiotLoginPageState extends State<RiotLoginPage> {
  late WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            // 리다이렉트 URL 감지
            if (request.url.startsWith('https://playvalorant.com/opt_in')) {
              _handleRedirect(request.url);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://auth.riotgames.com/authorize?redirect_uri=https%3A%2F%2Fplayvalorant.com%2Fopt_in&client_id=play-valorant-web-prod&response_type=token%20id_token&nonce=69&scope=account%20openid'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    super.initState();
  }

  void _handleRedirect(String url) {
    Uri uri = Uri.parse(url);

    // 예제: URL에서 access_token과 id_token을 추출
    String? fragment = uri.fragment; // URL Fragment 부분 가져오기
    if (fragment.isNotEmpty) {
      Map<String, String> params = Uri.splitQueryString(fragment);
      String? accessToken = params["access_token"];
      String? idToken = params["id_token"];

      if (accessToken != null && idToken != null) {
        Clipboard.setData(ClipboardData(text: accessToken));
        extractPlayerUUID(idToken);
        Navigator.of(context).pop({
          "accessToken" : accessToken,
          "idToken" : idToken
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          children: [
            AppBar(
              title: const Text('Riot Login'),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Expanded(
                child: WebViewWidget(
                  controller: _controller,
                )
            )
          ],
        ),
    );
  }
}
