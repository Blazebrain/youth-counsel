import 'package:flutter/material.dart';
import 'package:youth_counsellor/screens/SignUpScreen/signUpScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SignUpScreen(),
      theme:
          ThemeData(primarySwatch: Colors.lightBlue, accentColor: Colors.amber),
    );
  }
}
