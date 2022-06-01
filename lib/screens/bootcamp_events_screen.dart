import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_bootcamp_events.dart';
import 'package:thppy_administration/screens/mobile/mobile_bootcamp_events.dart';

class BootcampEventsScreen extends StatefulWidget {
  const BootcampEventsScreen({Key? key}) : super(key: key);

  @override
  State<BootcampEventsScreen> createState() => _BootcampEventsScreenState();
}

class _BootcampEventsScreenState extends State<BootcampEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileBootcampEvents(),
      desktop: DesktopBootcampEvents(),
    );
  }
}