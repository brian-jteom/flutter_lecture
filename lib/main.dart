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

  final postList = [
    {
      "number": 1,
      "colorData": Colors.green
    },
    {
      "number": 2,
      "colorData": Colors.blue
    },
    {
      "number": 3,
      "colorData": Colors.amberAccent
    },
    {
      "number": 4,
      "colorData": Colors.cyan
    },
    {
      "number": 5,
      "colorData": Colors.cyan
    },
    {
      "number": 6,
      "colorData": Colors.amberAccent
    },
    {
      "number": 7,
      "colorData": Colors.green
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("안녕하세요"),
        ),
        body:  GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 12.0
              ),
              itemCount: postList.length,
              itemBuilder: (BuildContext con, int index) {
                return postContainer(
                  number: postList[index]["number"] as int,
                  colorData: postList[index]["colorData"] as Color
                );
              }),
        );
  }

  Widget postContainer({int number = 0, Color colorData = Colors.amber}) {
    return Container(
            height: 200,
            color: colorData,
            child: Center(child: Text("Box $number")),
          );
  }

}

