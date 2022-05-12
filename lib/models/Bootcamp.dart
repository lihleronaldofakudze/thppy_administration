// id	bootcamp_name	Bootcamp_pic	target_audiance	status	last_update

class Bootcamp {
  final int id;
  final String bootcampName;
  final String bootcampPic;
  final String targetAudiance;
  final String status;
  final DateTime lastUpdate;

  Bootcamp({
    required this.id,
    required this.bootcampName,
    required this.bootcampPic,
    required this.targetAudiance,
    required this.status,
    required this.lastUpdate,
  });

  factory Bootcamp.fromJson(Map<String, dynamic> json) => Bootcamp(
        id: json["id"],
        bootcampName: json["bootcamp_name"],
        bootcampPic: json["Bootcamp_pic"],
        targetAudiance: json["target_audiance"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
