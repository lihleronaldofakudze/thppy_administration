// id	comments	Blog_title	sent_by	status	last_update

class Comment {
  final int id;
  final String comments;
  final String blogTitle;
  final String sentBy;
  final String status;
  final DateTime lastUpdate;

  Comment({
    required this.id,
    required this.comments,
    required this.blogTitle,
    required this.sentBy,
    required this.status,
    required this.lastUpdate,
  });
}
