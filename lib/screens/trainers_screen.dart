import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_trainers.dart';
import 'package:thppy_administration/screens/mobile/mobile_trainers.dart';

class TrainersScreen extends StatefulWidget {
  const TrainersScreen({Key? key}) : super(key: key);

  @override
  State<TrainersScreen> createState() => _TrainersScreenState();
}

class _TrainersScreenState extends State<TrainersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileTrainers(),
      desktop: DesktopTrainers(),
    );
  }
}