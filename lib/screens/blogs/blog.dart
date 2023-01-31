class Blog {
  final String id;
  final String title;
  final String description;
  final String pic;
  final String status;
  final List likes;
  final DateTime lastUpdate;

  Blog({
    required this.id,
    required this.title,
    required this.description,
    required this.pic,
    required this.status,
    required this.likes,
    required this.lastUpdate,
  });
}
