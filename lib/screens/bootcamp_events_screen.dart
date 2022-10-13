import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class BootcampEventsScreen extends StatefulWidget {
  const BootcampEventsScreen({Key? key}) : super(key: key);

  @override
  State<BootcampEventsScreen> createState() => _BootcampEventsScreenState();
}

class _BootcampEventsScreenState extends State<BootcampEventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Bootcamps Event'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Bootcamps Events Data Management'),
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
