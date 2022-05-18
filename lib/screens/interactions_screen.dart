import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';

class InteractionsScreen extends StatefulWidget {
  const InteractionsScreen({Key? key}) : super(key: key);

  @override
  State<InteractionsScreen> createState() => _InteractionsScreenState();
}

class _InteractionsScreenState extends State<InteractionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileCountries(),
      desktop: DesktopCountries(),
    );
  }
}
