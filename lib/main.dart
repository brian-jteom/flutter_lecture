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
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => print("gesture detect on tap"),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              child: Text('Click Me'),
            ),
            GestureDetector(
              onTap: () => print("gesture detect on tap 3"),
              onDoubleTap: () => print('Container double-clicked!'),
              onLongPress: () => print('Container long-pressed!'),
              child: Container(
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'Tap me',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

