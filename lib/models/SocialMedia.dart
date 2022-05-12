// id	name	manager_name	manager_phone	manager_email	login_username	login_password	status	last_update

class SocialMedia {
  final int id;
  final String name;
  final String managerName;
  final String managerPhone;
  final String managerEmail;
  final String loginUsername;
  final String loginPassword;
  final String status;
  final DateTime lastUpdate;

  SocialMedia({
    required this.id,
    required this.name,
    required this.managerName,
    required this.managerPhone,
    required this.managerEmail,
    required this.loginUsername,
    required this.loginPassword,
    required this.status,
    required this.lastUpdate,
  });

  factory SocialMedia.fromJson(Map<String, dynamic> json) => SocialMedia(
        id: json["id"],
        name: json["name"],
        managerName: json["manager_name"],
        managerPhone: json["manager_phone"],
        managerEmail: json["manager_email"],
        loginUsername: json["login_username"],
        loginPassword: json["login_password"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
