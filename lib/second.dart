import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("test title"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Text("This is the second view"),
          ),
        )
    );
  }
}
