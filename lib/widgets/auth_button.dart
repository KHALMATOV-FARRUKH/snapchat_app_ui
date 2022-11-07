import 'package:flutter/material.dart';
import 'package:snapchat_app_ui/screens/authentification_screen.dart';

class AuthButton extends StatelessWidget {
  // const AuthButton({Key? key}) : super(key: key);

  final Color color;
  final String text;
  final Function onPress;

  AuthButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {onPress();},
      child: Container(
        height: 120,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
