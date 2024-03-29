// id	service_name	organization	country_name	region_name	center_name	status	last_update

class Service {
  final int id;
  final String serviceName;
  final String organization;
  final String countryName;
  final String regionName;
  final String centerName;
  final String status;
  final DateTime lastUpdate;

  Service({
    required this.id,
    required this.serviceName,
    required this.organization,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.status,
    required this.lastUpdate,
  });
}
