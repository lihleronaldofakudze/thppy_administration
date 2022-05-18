import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
