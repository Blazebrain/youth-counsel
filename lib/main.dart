import 'package:flutter/material.dart';
import 'package:youth_counsellor/pages/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SignUpPage(),
      theme:
          ThemeData(primarySwatch: Colors.lightBlue, accentColor: Colors.amber),
    );
  }
}
