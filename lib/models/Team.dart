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
}
