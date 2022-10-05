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
}
