import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:thppy_administration/screens/desktop/desktop_home.dart';
import 'package:thppy_administration/screens/mobile/mobile_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileHome(),
      desktop: const DesktopHome(),
    );
  }
}
