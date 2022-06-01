import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_ambassadors.dart';
import 'package:thppy_administration/screens/mobile/mobile_ambassadors.dart';

class AmbassadorsScreen extends StatefulWidget {
  const AmbassadorsScreen({Key? key}) : super(key: key);

  @override
  State<AmbassadorsScreen> createState() => _AmbassadorsScreenState();
}

class _AmbassadorsScreenState extends State<AmbassadorsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileAmbassadors(),
      desktop: DesktopAmbassadors(),
    );
  }
}
