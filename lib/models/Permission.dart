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

  factory Permission.fromJson(Map<String, dynamic> json) => Permission(
        id: json["id"],
        permissionName: json["permission_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
