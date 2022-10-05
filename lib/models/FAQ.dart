// id	question	answer	status	last_update

class FAQ {
  final int id;
  final String question;
  final String answer;
  final String status;
  final DateTime lastUpdate;

  FAQ({
    required this.id,
    required this.question,
    required this.answer,
    required this.status,
    required this.lastUpdate,
  });
}
