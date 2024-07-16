import 'dart:ui';

import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("안녕하세요"),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 개수
            crossAxisSpacing: 15.0, // 주석 해보기 (가로 행간 길이)
            mainAxisSpacing: 12.0 // 주석 해보기(세로 행간 길이)
          ),
          children: [
            postContainer(),
            postContainer(),
            postContainer(),
            postContainer()
          ],
        )
    );
  }

  Widget postContainer() {
    return Container(
            height: 200,
            color: Colors.amber,
            child: Center(child: Text("Box")),
          );
  }

}

