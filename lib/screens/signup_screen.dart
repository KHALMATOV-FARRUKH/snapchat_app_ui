import 'package:flutter/material.dart';
import 'package:snapchat_app_ui/widgets/login_signup_button.dart';
import 'package:snapchat_app_ui/widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String error = "";
  String username = "";
  String password = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 40),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue,
                          size: 32,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    fieldOnScreen(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              signUpButton(),
            ],
          ),
        ),
      ),
    );
  }

  fieldOnScreen() {
    return Container(
      child: Column(
        children: [
          // the text

          Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),

          TxtFieldForScreen(
            txtType: TextInputType.name,
            label: "Username",
            obscure: false,
            validator: (val) =>
            val.length > 2 ? "Minimum 2 characters are needed" : null,
            onChange: (val) {
              setState(() {
                return username = val;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          TxtFieldForScreen(
            txtType: TextInputType.emailAddress,
            label: "Email",
            obscure: false,
            validator: (val) => val.isEmpty ? "Enter an email" : null,
            onChange: (val) {
              setState(() {
                return email = val;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),

          TxtFieldForScreen(
            label: "Password",
            obscure: true,
            validator: (val) =>
            val.length < 6 ? "password must be 6+ characters" : null,
            onChange: (val) {
              setState(() {
                return password = val;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
              right: 35,
            ),
            child: RichText(
              text: TextSpan(
                  text:
                  "By tapping Sign Up & Accept you acknowledge that you have read the ",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "Privacy Policy ",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: "and agree to the ",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  signUpButton() {
    return Container(
      child: Column(
        children: [
          LoginAndSignUpButton(
            color: Colors.blue,
            text: "Sign Up & Accept",
            onPress: () async {
              if (_formKey.currentState.validate()) {}
            },
          )
        ],
      ),
    );
  }
}