// id	country_name	last_update	status

class Country {
  final int id;
  final String countryName;
  final DateTime lastUpdate;
  final String status;

  Country({
    required this.id,
    required this.countryName,
    required this.lastUpdate,
    required this.status,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        countryName: json["country_name"],
        lastUpdate: DateTime.parse(json["last_update"]),
        status: json["status"],
      );
}
