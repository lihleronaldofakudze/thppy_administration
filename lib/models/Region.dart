// id	region_name	country_name	status	last_update

class Region {
  final int id;
  final String regionName;
  final String countryName;
  final int status;
  final String lastUpdate;

  Region({
    required this.id,
    required this.regionName,
    required this.countryName,
    required this.status,
    required this.lastUpdate,
  });
}
