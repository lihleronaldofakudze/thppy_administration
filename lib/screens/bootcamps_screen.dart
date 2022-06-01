import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_bootcamps.dart';
import 'package:thppy_administration/screens/mobile/mobile_bootcamps.dart';

class BootcampsScreen extends StatefulWidget {
  const BootcampsScreen({Key? key}) : super(key: key);

  @override
  State<BootcampsScreen> createState() => _BootcampsScreenState();
}

class _BootcampsScreenState extends State<BootcampsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileBootcamps(),
      desktop: DesktopBootcamps(),
    );
  }
}
