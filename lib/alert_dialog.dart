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
        child: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext con) {
                    return AlertDialog(
                      title: const Text("Dialog Title"),
                      content: Container(
                        child: const Text("Dialog Content"),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(), 
                            child: const Text("Close")
                        )
                      ],
                    );
                  }
              );
            },
            child: const Text("팝업 버튼"),
          ),

        ),
      ),
    );
  }
}
