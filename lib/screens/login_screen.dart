import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:thppy_administration/screens/desktop/desktop_login.dart';
import 'package:thppy_administration/screens/mobile/mobile_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileLogin(),
      desktop: const DesktopLogin(),
    );
  }
}
