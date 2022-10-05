import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/models/CurrentUser.dart';
import 'package:thppy_administration/screens/home_screen.dart';
import 'package:thppy_administration/screens/login_screen.dart';

class AuthStateScreen extends StatefulWidget {
  const AuthStateScreen({Key? key}) : super(key: key);

  @override
  State<AuthStateScreen> createState() => _AuthStateScreenState();
}

class _AuthStateScreenState extends State<AuthStateScreen> {
  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<CurrentUser?>(context);
    if (currentUser != null) {
      return const HomeScreen();
    } else {
      return const LoginScreen();
    }
  }
}
