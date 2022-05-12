import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({Key? key}) : super(key: key);

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              color: Colors.red,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Lihle Fakudze'),
          ),
          const CircleAvatar(
            radius: 22,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
