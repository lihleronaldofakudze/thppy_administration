import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class PartnersScreen extends StatefulWidget {
  const PartnersScreen({Key? key}) : super(key: key);

  @override
  State<PartnersScreen> createState() => _PartnersScreenState();
}

class _PartnersScreenState extends State<PartnersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Partner'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Partners Data Management'),
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
