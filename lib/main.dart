import 'package:flutter/material.dart';
import 'package:mytpqmobile/home.dart';

void main() => runApp(const MyTPQLogin());

class MyTPQLogin extends StatelessWidget {
  const MyTPQLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: const MyHome(),
    );
  }
}
