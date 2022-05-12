// id	natid	group_name	final_score	status	last_update

class QuizResponse {
  final int id;
  final String natid;
  final String groupId;
  final String finalScore;
  final String status;
  final DateTime lastUpdate;

  QuizResponse({
    required this.id,
    required this.natid,
    required this.groupId,
    required this.finalScore,
    required this.status,
    required this.lastUpdate,
  });

  factory QuizResponse.fromJson(Map<String, dynamic> json) => QuizResponse(
        id: json["id"],
        natid: json["natid"],
        groupId: json["group_id"],
        finalScore: json["final_score"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
