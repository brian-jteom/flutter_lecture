import 'package:flutter/material.dart';

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
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightBlue,
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              )
            ),
          ],
        ),
      ),
    );
  }
}
