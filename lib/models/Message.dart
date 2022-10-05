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
}
