// id	client_natid	service_name	referred_for	generated_id	country_name	region_name	center_name	status	last_update

class Interaction {
  final int id;
  final String clientNatid;
  final String serviceName;
  final String referredFor;
  final String generatedId;
  final String countryName;
  final String regionName;
  final String centerName;
  final String status;
  final DateTime lastUpdate;

  Interaction({
    required this.id,
    required this.clientNatid,
    required this.serviceName,
    required this.referredFor,
    required this.generatedId,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.status,
    required this.lastUpdate,
  });

  factory Interaction.fromJson(Map<String, dynamic> json) => Interaction(
        id: json["id"],
        clientNatid: json["client_natid"],
        serviceName: json["service_name"],
        referredFor: json["referred_for"],
        generatedId: json["generated_id"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        centerName: json["center_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
