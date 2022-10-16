import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class AmbassadorsScreen extends StatefulWidget {
  const AmbassadorsScreen({Key? key}) : super(key: key);

  @override
  State<AmbassadorsScreen> createState() => _AmbassadorsScreenState();
}

class _AmbassadorsScreenState extends State<AmbassadorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Ambassador'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Ambassadors Data Management'),
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
