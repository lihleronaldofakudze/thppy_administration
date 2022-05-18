import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class LinkagesScreen extends StatefulWidget {
  const LinkagesScreen({Key? key}) : super(key: key);

  @override
  State<LinkagesScreen> createState() => _LinkagesScreenState();
}

class _LinkagesScreenState extends State<LinkagesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
