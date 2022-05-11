// id	center_name	country_name	region_name	status	last_update

class Center {
  final int id;
  final String centerName;
  final String countryName;
  final String regionName;
  final int status;
  final String lastUpdate;

  Center({
    required this.id,
    required this.centerName,
    required this.countryName,
    required this.regionName,
    required this.status,
    required this.lastUpdate,
  });
}
