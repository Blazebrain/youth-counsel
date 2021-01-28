import 'package:flutter/material.dart';
import 'package:youth_counsellor/assets/fontAsset.dart';
import 'package:youth_counsellor/screens/SignUpScreen/signUpWidgets/signUpTextFields.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color backgroungColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: backgroungColor,
      body: SingleChildScrollView(child: _buildContent(context)),
    );
  }

  Widget _buildContent(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          alignment: Alignment.centerLeft,
          height: deviceHeight * 0.25,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome', style: FontAsset.welcomeTitle),
                Text(
                  'Sign Up',
                  style: FontAsset.unknownFont.copyWith(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      SignUpTextFields(
        deviceHeight - (deviceHeight * 0.25),
      ),
    ]);
  }
}
