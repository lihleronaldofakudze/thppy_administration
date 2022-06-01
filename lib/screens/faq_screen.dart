import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_faq.dart';
import 'package:thppy_administration/screens/mobile/mobile_faq.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileFAQ(),
      desktop: DesktopFAQ(),
    );
  }
}
