import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_centers.dart';
import 'package:thppy_administration/screens/mobile/mobile_login.dart';

class CentersScreen extends StatefulWidget {
  const CentersScreen({Key? key}) : super(key: key);

  @override
  State<CentersScreen> createState() => _CentersScreenState();
}

class _CentersScreenState extends State<CentersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileLogin(),
      desktop: DesktopCenters(),
    );
  }
}
