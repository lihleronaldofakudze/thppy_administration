// id	name	surname	country	region	position	status	last_update	pic

class Team {
  final int id;
  final String name;
  final String surname;
  final String country;
  final String region;
  final String position;
  final String status;
  final DateTime lastUpdate;
  final String pic;

  Team({
    required this.id,
    required this.name,
    required this.surname,
    required this.country,
    required this.region,
    required this.position,
    required this.status,
    required this.lastUpdate,
    required this.pic,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        country: json["country"],
        region: json["region"],
        position: json["position"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
        pic: json["pic"],
      );
}
