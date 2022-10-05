// id	pics	description	status	last_updated

class Gallery {
  final int id;
  final String pics;
  final String description;
  final String status;
  final DateTime lastUpdate;

  Gallery({
    required this.id,
    required this.pics,
    required this.description,
    required this.status,
    required this.lastUpdate,
  });
}
