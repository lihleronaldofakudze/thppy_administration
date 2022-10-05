// id	linkage_name	country	link	service_name	status	last_update

class Linkage {
  final int id;
  final String linkageName;
  final String country;
  final String link;
  final String serviceName;
  final String status;
  final DateTime lastUpdate;

  Linkage({
    required this.id,
    required this.linkageName,
    required this.country,
    required this.link,
    required this.serviceName,
    required this.status,
    required this.lastUpdate,
  });
}
