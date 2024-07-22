

import 'package:flutter/material.dart';

import 'form_user.dart';



class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPage();
}

class _SuccessPage extends State<SuccessPage> {


  @override
  Widget build(BuildContext context) {
    final User args = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("test app")
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("성공적으로 제출되었습니다"),
                Text("Username : ${args.username}"),
                Text("Email : ${args.email}")
              ],
            ),
          ),
        )
    );
  }


}
