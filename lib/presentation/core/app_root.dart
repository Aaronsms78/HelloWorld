import 'package:flutter/material.dart';
import 'package:helloworld/presentation/sign_in/sign_in_page.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelloWorld!<>',
      home: SignInPage(),
      theme: ThemeData(
      ),
    );
  }
}