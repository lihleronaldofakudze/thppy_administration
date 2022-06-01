import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_countries.dart';
import 'package:thppy_administration/screens/desktop/desktop_media.dart';
import 'package:thppy_administration/screens/mobile/mobile_countries.dart';
import 'package:thppy_administration/screens/mobile/mobile_media.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileMedia(),
      desktop: DesktopMedia(),
    );
  }
}
