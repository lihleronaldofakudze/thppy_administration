import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('THPPY'),
        actions: const [
          CircleAvatar(),
        ],
      ),
    );
  }
}
