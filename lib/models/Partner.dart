// id	name	country_name	region_name	description	logo	status	last_update

class Partner {
  final int id;
  final String name;
  final String countryName;
  final String regionName;
  final String description;
  final String logo;
  final String status;
  final DateTime lastUpdate;

  Partner({
    required this.id,
    required this.name,
    required this.countryName,
    required this.regionName,
    required this.description,
    required this.logo,
    required this.status,
    required this.lastUpdate,
  });

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        id: json["id"],
        name: json["name"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        description: json["description"],
        logo: json["logo"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
