// id	message	sent_by	status	last_update

class Chat {
  final int id;
  final String message;
  final String sentBy;
  final String status;

  Chat({
    required this.id,
    required this.message,
    required this.sentBy,
    required this.status,
  });
}
