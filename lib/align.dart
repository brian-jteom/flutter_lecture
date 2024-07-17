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
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("왼쪽"),
                )
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("중앙"),
                )
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("오른쪽"),
              )
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: Text("정중앙"),
                )
            )
          ],
        ),
      ),
    );
  }
}
