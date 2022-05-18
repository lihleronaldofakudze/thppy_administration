import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class YouthScreen extends StatefulWidget {
  const YouthScreen({Key? key}) : super(key: key);

  @override
  State<YouthScreen> createState() => _YouthScreenState();
}

class _YouthScreenState extends State<YouthScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
