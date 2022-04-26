import 'package:flutter/material.dart';
import 'package:thppy_administration/screens/home_screen.dart';
import 'package:thppy_administration/screens/login_screen.dart';

class AuthStateScreen extends StatefulWidget {
  const AuthStateScreen({Key? key}) : super(key: key);

  @override
  State<AuthStateScreen> createState() => _AuthStateScreenState();
}

class _AuthStateScreenState extends State<AuthStateScreen> {
  final isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return const HomeScreen();
    } else {
      return const LoginScreen();
    }
  }
}
