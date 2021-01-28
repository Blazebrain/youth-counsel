import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth_counsellor/assets/fontAsset.dart';
import 'package:youth_counsellor/utilities/validator.dart';
import 'package:youth_counsellor/widgets/textField.dart';

class SignUpTextFields extends StatefulWidget {
  SignUpTextFields(this.height);
  final double height;
  @override
  _SignUpTextFieldsState createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> with validator {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          color: Colors.white),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                title: 'USERNAME',
                controllerName: _username,
                isPassword: false,
                field: whatTextfield.username,
                validate: validate,
              ),
              CustomTextField(
                title: 'EMAIL',
                controllerName: _email,
                isPassword: false,
                field: whatTextfield.email,
                validate: validate,
              ),
              CustomTextField(
                title: 'PASSWORD',
                controllerName: _password,
                isPassword: true,
                field: whatTextfield.password,
                validate: validate,
              ),
              CustomTextField(
                title: 'CONFIRM PASSWORD',
                controllerName: _confirmPassword,
                isPassword: true,
                field: whatTextfield.passwordConfirm,
                validate: validate,
                mainPassword: _password,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                child: FlatButton(
                  child: Text('REGISTER',
                      style: FontAsset.title.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    print(_formKey.currentState.validate());
                  },
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'or sign up with ', style: FontAsset.regularText),
                TextSpan(
                    text: 'Google',
                    style: FontAsset.title
                        .copyWith(color: Theme.of(context).primaryColor))
              ])),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 10),
                    child: Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Got an account already? ',
                          style: FontAsset.regularText),
                      TextSpan(
                          text: 'Log In',
                          style: FontAsset.title
                              .copyWith(color: Theme.of(context).primaryColor))
                    ])),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
