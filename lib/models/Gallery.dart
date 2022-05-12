// id	pics	description	status	last_updated

class Gallery {
  final int id;
  final String pics;
  final String description;
  final String status;
  final DateTime lastUpdate;

  Gallery({
    required this.id,
    required this.pics,
    required this.description,
    required this.status,
    required this.lastUpdate,
  });

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        id: json["id"],
        pics: json["pics"],
        description: json["description"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
