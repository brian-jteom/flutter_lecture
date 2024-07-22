import 'package:flutter/material.dart';
import 'package:flutter_lecture/notification.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    initializeNotifications();
  }

  Future<void> initializeNotifications() async {
    await FlutterLocalNotification.init();
    Future.delayed(
        const Duration(seconds: 3),
            () => FlutterLocalNotification.requestNotificationPermission()
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("알림 목록"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FlutterLocalNotification.showNotification(),
          child: const Text("알림보내기")
        )
      ),
    );
  }
}