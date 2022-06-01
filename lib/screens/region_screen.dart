import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_regions.dart';
import 'package:thppy_administration/screens/mobile/mobile_regions.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({Key? key}) : super(key: key);

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileRegions(),
      desktop: DesktopRegions(),
    );
  }
}
