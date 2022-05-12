// id	name	surname	phone	email	username	password	pic	permission_name	status	last_update

class User {
  final int id;
  final String name;
  final String surname;
  final String phone;
  final String email;
  final String username;
  final String password;
  final String pic;
  final String permissionName;
  final String status;
  final DateTime lastUpdate;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.phone,
    required this.email,
    required this.username,
    required this.password,
    required this.pic,
    required this.permissionName,
    required this.status,
    required this.lastUpdate,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        phone: json["phone"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        pic: json["pic"],
        permissionName: json["permission_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
