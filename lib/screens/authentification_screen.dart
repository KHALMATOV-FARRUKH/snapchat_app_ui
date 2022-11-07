import 'package:flutter/material.dart';
import 'package:snapchat_app_ui/screens/login_screen.dart';
import 'package:snapchat_app_ui/screens/signup_screen.dart';
import 'package:snapchat_app_ui/widgets/auth_button.dart';

class AuthentificationScreen extends StatefulWidget {
  const AuthentificationScreen({Key? key}) : super(key: key);

  @override
  State<AuthentificationScreen> createState() => _AuthentificationScreenState();
}

class _AuthentificationScreenState extends State<AuthentificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 100),
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logo.png'),
            height: 160,
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                AuthButton(
                  color: Colors.red,
                  text: 'LOG IN',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                AuthButton(
                  color: Colors.blue,
                  text: 'SIGN UP',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
