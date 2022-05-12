// id	quizgroup_name	status	last_update

class QuizGroup {
  final int id;
  final String quizgroupName;
  final String status;
  final DateTime lastUpdate;

  QuizGroup({
    required this.id,
    required this.quizgroupName,
    required this.status,
    required this.lastUpdate,
  });

  factory QuizGroup.fromJson(Map<String, dynamic> json) => QuizGroup(
        id: json["id"],
        quizgroupName: json["quizgroup_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
