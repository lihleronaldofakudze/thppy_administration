// id	center_name	country_name	region_name	status	last_update

class Center {
  final int id;
  final String centerName;
  final String countryName;
  final String regionName;
  final String status;
  final DateTime lastUpdate;

  Center({
    required this.id,
    required this.centerName,
    required this.countryName,
    required this.regionName,
    required this.status,
    required this.lastUpdate,
  });

  factory Center.fromJson(Map<String, dynamic> json) => Center(
        id: json["id"],
        centerName: json["center_name"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
