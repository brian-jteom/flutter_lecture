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
      body: ListView(
        children: [
          postContainer(title: "title 1"),
          postContainer(title: "title 2", colorData: Colors.blue),
          postContainer(title: "title 3", colorData: Colors.green)
        ],
      )
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.red}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: colorData,
        )
      ],
    );
  }
}

