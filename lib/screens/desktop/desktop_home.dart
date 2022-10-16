import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/app_bar_widget.dart';
import 'package:thppy_administration/widgets/bar_charts_widget.dart';
import 'package:thppy_administration/widgets/circular_charts_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';
import 'package:thppy_administration/widgets/line_charts_widget.dart';
import 'package:thppy_administration/widgets/welcome_card_widget.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context: context),
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: DrawerWidget(),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(flex: 2, child: WelcomeCardWidget()),
                      Expanded(flex: 1, child: BarChartsWidget()),
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(flex: 1, child: CircularChartsWidget()),
                      Expanded(flex: 1, child: BarChartsWidget()),
                      Expanded(flex: 1, child: LineChartsWidget()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
