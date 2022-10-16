import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class BootcampsScreen extends StatefulWidget {
  const BootcampsScreen({Key? key}) : super(key: key);

  @override
  State<BootcampsScreen> createState() => _BootcampsScreenState();
}

class _BootcampsScreenState extends State<BootcampsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Bootcamp'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Bootcamps Data Management'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.description_rounded,
              color: Colors.green,
            ),
            tooltip: 'Generate Excel',
          ),
        ],
      ),
    );
  }
}
