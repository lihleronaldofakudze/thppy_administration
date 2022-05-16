import 'package:thppy_administration/models/QuizGroup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuizGroupServices {
  // Get Quiz Group List
  Future<List<QuizGroup>> getQuizGroups() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewQuizGroups.php'));
    var decodeQuizGroups =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<QuizGroup> quizGroups = decodeQuizGroups
        .map<QuizGroup>((json) => QuizGroup.fromJson(json))
        .toList();
    return quizGroups;
  }
}
