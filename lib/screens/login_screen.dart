import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_login.dart';
import 'package:thppy_administration/screens/mobile/mobile_login.dart';
import 'package:thppy_administration/screens/tablet/tablet_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileLogin(),
      tablet: TabletLogin(),
      desktop: DesktopLogin(),
    );
  }
}
