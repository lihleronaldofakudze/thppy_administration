// id	title	trainer_name	description	pic	status	last_update

class Blog {
  final int id;
  final String title;
  final String trainerName;
  final String description;
  final String pic;
  final String status;
  final DateTime lastUpdate;

  Blog({
    required this.id,
    required this.title,
    required this.trainerName,
    required this.description,
    required this.pic,
    required this.status,
    required this.lastUpdate,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        title: json["title"],
        trainerName: json["trainer_name"],
        description: json["description"],
        pic: json["pic"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
