import 'package:flutter/material.dart';

import 'second.dart';


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
        title: const Text("test title"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (_) => SecondView())
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Text("Get Started"),
          ),
        ),
      )
    );
  }
}
