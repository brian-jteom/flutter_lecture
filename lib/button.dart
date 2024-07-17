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
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
                ),
                onPressed: () => print("ElevatedButton"),
                child: const Text("ElevatedButton"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print("TextButton"),
                child: const Text("TextButton"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("OutlinedButton"),
                child: const Text("OutlinedButton"),
              ),
            )
          ],
        ),
      )
    );
  }
}
