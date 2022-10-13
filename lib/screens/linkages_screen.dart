import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class LinkagesScreen extends StatefulWidget {
  const LinkagesScreen({Key? key}) : super(key: key);

  @override
  State<LinkagesScreen> createState() => _LinkagesScreenState();
}

class _LinkagesScreenState extends State<LinkagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Country'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Linkages Data Management'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Generate Excel'),
          ),
        ],
      ),
    );
  }
}
