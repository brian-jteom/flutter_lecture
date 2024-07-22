

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'form_user.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _key = GlobalKey<FormState>();
  late String _username, _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _key,
            child: Column(
              children: [
                usernameInput(),
                const SizedBox(height: 15),
                emailInput(),
                const SizedBox(height: 15),
                submitButton()
              ],
            ),
          ),
        )
    );
  }

  Widget usernameInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if(val == null || val.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (username) => _username = username ?? '',
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Input your username',
          labelText: 'username',
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          )

      ),
    );
  }

  Widget emailInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if(val == null || val.isEmpty) {
          return 'The input is empty';
        } else {
          return null;
        }
      },
      onSaved: (email) => _email = email?? '',
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Input your email address',
          labelText: 'email address',
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          )

      ),
    );
  }


  Widget submitButton() {
    return ElevatedButton(
        onPressed: () {
          if(_key.currentState!.validate()) {
            _key.currentState!.save();
            Navigator.pushNamed(context, '/success', arguments: User(_username, _email));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          child: const Text('제출'),
        )
    );
  }

}
