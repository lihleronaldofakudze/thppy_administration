import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_forgot_password.dart';
import 'package:thppy_administration/screens/mobile/mobile_forgot_password.dart';
import 'package:thppy_administration/screens/tablet/tablet_forgot_password.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileForgotPassword(),
      tablet: TabletForgotPassword(),
      desktop: DesktopForgotPassword(),
    );
  }
}
