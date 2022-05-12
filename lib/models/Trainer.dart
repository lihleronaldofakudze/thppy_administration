// id	natid	name	surname	phone	email	organization_name	country_name	region_name	center_name	username	password	pic	status	last_update

class Trainer {
  final int id;
  final String natid;
  final String name;
  final String surname;
  final String phone;
  final String email;
  final String organizationName;
  final String countryName;
  final String regionName;
  final String centerName;
  final String username;
  final String password;
  final String pic;
  final String status;
  final DateTime lastUpdate;

  Trainer({
    required this.id,
    required this.natid,
    required this.name,
    required this.surname,
    required this.phone,
    required this.email,
    required this.organizationName,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.username,
    required this.password,
    required this.pic,
    required this.status,
    required this.lastUpdate,
  });

  factory Trainer.fromJson(Map<String, dynamic> json) => Trainer(
        id: json["id"],
        natid: json["natid"],
        name: json["name"],
        surname: json["surname"],
        phone: json["phone"],
        email: json["email"],
        organizationName: json["organization_name"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        centerName: json["center_name"],
        username: json["username"],
        password: json["password"],
        pic: json["pic"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
