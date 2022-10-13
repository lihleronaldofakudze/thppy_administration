import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class InteractionsScreen extends StatefulWidget {
  const InteractionsScreen({Key? key}) : super(key: key);

  @override
  State<InteractionsScreen> createState() => _InteractionsScreenState();
}

class _InteractionsScreenState extends State<InteractionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Interactions Data Management'),
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
