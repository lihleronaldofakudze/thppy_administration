import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_interactions.dart';
import 'package:thppy_administration/screens/mobile/mobile_interactions.dart';

class InteractionsScreen extends StatefulWidget {
  const InteractionsScreen({Key? key}) : super(key: key);

  @override
  State<InteractionsScreen> createState() => _InteractionsScreenState();
}

class _InteractionsScreenState extends State<InteractionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileInteractions(),
      desktop: DesktopInteractions(),
    );
  }
}
