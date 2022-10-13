import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class QuizGroupsScreen extends StatefulWidget {
  const QuizGroupsScreen({Key? key}) : super(key: key);

  @override
  State<QuizGroupsScreen> createState() => _QuizGroupsScreenState();
}

class _QuizGroupsScreenState extends State<QuizGroupsScreen> {
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
        title: const Text('Quiz Group Data Management'),
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
