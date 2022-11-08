import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapchat_app_ui/screens/authentification_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Snapchat UI ',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthenticationScreen(),

    );
  }
}