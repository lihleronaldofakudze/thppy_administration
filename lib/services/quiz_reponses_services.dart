import 'package:thppy_administration/models/QuizResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuizResponsesServices {
  // Get All Quiz Responses
  Future<List<QuizResponse>> getQuizResponses() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewQuizResponses.php'));
    var decodeQuizResponses =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<QuizResponse> quizResponses = decodeQuizResponses
        .map<QuizResponse>((json) => QuizResponse.fromJson(json))
        .toList();
    return quizResponses;
  }
}
