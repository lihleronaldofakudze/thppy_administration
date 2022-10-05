// id	bootcamp_name	Bootcamp_pic	target_audiance	status	last_update

class Bootcamp {
  final int id;
  final String bootcampName;
  final String bootcampPic;
  final String targetAudiance;
  final String status;
  final DateTime lastUpdate;

  Bootcamp({
    required this.id,
    required this.bootcampName,
    required this.bootcampPic,
    required this.targetAudiance,
    required this.status,
    required this.lastUpdate,
  });
}
