import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

import '../../../util.dart';

class RiotLoginPage extends StatelessWidget {
  final WebViewController webViewController;

  const RiotLoginPage({super.key, required this.webViewController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      child: Column(
        children: [
          AppBar(
            title: const Text('Riot Login', style: TextStyle(color: Colors.white),),
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
            child: GestureDetector(
              onVerticalDragUpdate: (_) {}, // 스크롤 활성화를 위한 터치 감지
              child: WebViewWidget(
                controller: webViewController,
                gestureRecognizers: {
                  Factory<OneSequenceGestureRecognizer>(
                        () => EagerGestureRecognizer(), // 모든 제스처 허용
                  ),
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}