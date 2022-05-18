import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class SocialMediaAnalysisScreen extends StatefulWidget {
  const SocialMediaAnalysisScreen({Key? key}) : super(key: key);

  @override
  State<SocialMediaAnalysisScreen> createState() =>
      _SocialMediaAnalysisScreenState();
}

class _SocialMediaAnalysisScreenState extends State<SocialMediaAnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
