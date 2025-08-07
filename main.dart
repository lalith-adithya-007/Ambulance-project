import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'ForgotPw.dart';
import 'Selection.dart'; // Add this import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/forgot-password': (context) => ForgotPw(),
        '/selection': (context) => Selection(), // Route for Sign Up
      },
    );
  }
}
