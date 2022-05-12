// id	region_name	country_name	status	last_update

class Region {
  final int id;
  final String regionName;
  final String countryName;
  final String status;
  final DateTime lastUpdate;

  Region({
    required this.id,
    required this.regionName,
    required this.countryName,
    required this.status,
    required this.lastUpdate,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        regionName: json["region_name"],
        countryName: json["country_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
