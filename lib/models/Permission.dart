// id	permission_name	status	last_update

class Permission {
  final int id;
  final String permissionName;
  final String status;
  final DateTime lastUpdate;

  Permission({
    required this.id,
    required this.permissionName,
    required this.status,
    required this.lastUpdate,
  });
}
