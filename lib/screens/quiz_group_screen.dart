import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class QuizGroupsScreen extends StatefulWidget {
  const QuizGroupsScreen({Key? key}) : super(key: key);

  @override
  State<QuizGroupsScreen> createState() => _QuizGroupsScreenState();
}

class _QuizGroupsScreenState extends State<QuizGroupsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
