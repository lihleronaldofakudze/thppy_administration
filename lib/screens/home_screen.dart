import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_home.dart';
import 'package:thppy_administration/screens/mobile/mobile_home.dart';
import 'package:thppy_administration/screens/tablet/table_home.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileHome(),
      tablet: TabletHome(),
      desktop: DesktopHome(),
    );
  }
}
