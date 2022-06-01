import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_social_media_analysis.dart';
import 'package:thppy_administration/screens/mobile/mobile_social_media_analysis.dart';

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
      mobile: MobileSocialMediaAnalysis(),
      desktop: DesktopSocialMediaAnalysis(),
    );
  }
}
