import 'package:flutter/material.dart';
import 'package:thppy_administration/responsive.dart';
import 'package:thppy_administration/screens/desktop/desktop_quiz_responses.dart';
import 'package:thppy_administration/screens/mobile/mobile_quiz_responses.dart';

class QuizResponsesScreen extends StatefulWidget {
  const QuizResponsesScreen({Key? key}) : super(key: key);

  @override
  State<QuizResponsesScreen> createState() => _QuizResponsesScreenState();
}

class _QuizResponsesScreenState extends State<QuizResponsesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileQuizResponses(),
      desktop: DesktopQuizResponses(),
    );
  }
}
