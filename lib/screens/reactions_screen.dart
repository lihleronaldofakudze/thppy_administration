import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class ReactionsScreen extends StatefulWidget {
  const ReactionsScreen({Key? key}) : super(key: key);

  @override
  State<ReactionsScreen> createState() => _ReactionsScreenState();
}

class _ReactionsScreenState extends State<ReactionsScreen> {
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
        title: const Text('Reactions Data Management'),
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
