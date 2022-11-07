import 'package:flutter/material.dart';
import 'package:snapchat_app_ui/screens/authentification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snapchat UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthentificationScreen(),
    );
  }
}