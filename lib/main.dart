import 'dart:ui';

import 'package:flutter/material.dart';
import 'notification.dart';
import 'notification_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalNotification.init();  // 플러그인 초기화
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}



