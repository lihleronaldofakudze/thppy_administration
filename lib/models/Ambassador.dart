// id	name	surname	natid	gender	phone	email	pic	hashtag	country_name	region_name	center_name	organization	status	last_update

class Ambassador {
  final int id;
  final String name;
  final String surname;
  final String natid;
  final String gender;
  final String phone;
  final String email;
  final String pic;
  final String hashtag;
  final String countryName;
  final String regionName;
  final String centerName;
  final String organization;
  final String status;
  final String lastUpdate;

  Ambassador({
    required this.id,
    required this.name,
    required this.surname,
    required this.natid,
    required this.gender,
    required this.phone,
    required this.email,
    required this.pic,
    required this.hashtag,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.organization,
    required this.status,
    required this.lastUpdate,
  });
}
