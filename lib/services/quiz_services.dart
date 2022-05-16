import 'package:thppy_administration/models/Quiz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuizServices {
  // Get Quiz List
  Future<List<Quiz>> getQuizzes() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewQuizzes.php'));
    var decodeQuizzes = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Quiz> quizzes =
        decodeQuizzes.map<Quiz>((json) => Quiz.fromJson(json)).toList();
    return quizzes;
  }
}
