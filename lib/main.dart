import 'dart:ui';

import 'package:flutter/material.dart';
import 'form_success_page.dart';
import 'form_home_page.dart';

void main() {
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
      routes: {
        '/': (context) => const MyHomePage(),
        '/success': (context) => const SuccessPage(),
      },
      // home: const MyHomePage(),
    );
  }
}



