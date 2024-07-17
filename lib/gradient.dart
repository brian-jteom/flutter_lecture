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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // gradient: buildLinearGradient()
          gradient: RadialGradient(
            center: Alignment.center,
            colors: [
              Colors.blue[100] as Color,
              Colors.blue[300] as Color,
              Colors.blue[500] as Color,
            ],
            radius: 1.0
          )
        ),
      ),
    );
  }

  LinearGradient buildLinearGradient() {
    return LinearGradient(
          colors: [
            Colors.blue[100] as Color,
            Colors.blue[300] as Color,
            Colors.blue[500] as Color,
          ],
          // 왼쪽에서 오른쪽이 degault
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        );
  }
}
