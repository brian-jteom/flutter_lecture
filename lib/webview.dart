import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late WebViewController _controller;


  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // 웹 페이지 로딩 진행률 업데이트
            print('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            // 페이지 로딩 시작
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            // 페이지 로딩 완료
            print('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            // 웹 리소스 로딩 중 오류 발생
            print('Error: ${error.description}');
          },
          onNavigationRequest: (NavigationRequest request) {
            // 특정 도메인으로의 이동을 막고 싶을 때 사용
            if (request.url.startsWith('https://www.youtube.com/')) {
              print('Blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            print('Allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
