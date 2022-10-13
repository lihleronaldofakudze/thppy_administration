import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Comments'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Comments Data Management'),
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
