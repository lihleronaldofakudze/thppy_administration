import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Chats'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Chats Data Management'),
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
