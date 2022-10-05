// id	question	answer	quizgroup_name	status	last_update

class Quiz {
  final int id;
  final String question;
  final String answer;
  final String quizgroupName;
  final String status;
  final DateTime lastUpdate;

  Quiz({
    required this.id,
    required this.question,
    required this.answer,
    required this.quizgroupName,
    required this.status,
    required this.lastUpdate,
  });
}
