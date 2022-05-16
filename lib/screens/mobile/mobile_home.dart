import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/bar_charts_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';
import 'package:thppy_administration/widgets/line_charts_widget.dart';
import 'package:thppy_administration/widgets/welcome_card_widget.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Thppy Administration'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            WelcomeCardWidget(),
            BarChartsWidget(),
            BarChartsWidget(),
            // CircularChartsWidget(),
            LineChartsWidget(),
          ],
        ),
      ),
    );
  }
}
