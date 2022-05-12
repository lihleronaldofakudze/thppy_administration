// id	message_title	content	social_media_name	status	last_update

class Message {
  final int id;
  final String messageTitle;
  final String content;
  final String socialMediaName;
  final String status;
  final DateTime lastUpdate;

  Message({
    required this.id,
    required this.messageTitle,
    required this.content,
    required this.socialMediaName,
    required this.status,
    required this.lastUpdate,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"],
        messageTitle: json["message_title"],
        content: json["content"],
        socialMediaName: json["social_media_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
