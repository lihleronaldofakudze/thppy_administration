// id	social_media	message_title	age_range	gender	new_reached	total_reached	status	last_update

class SocialMediaAnalysis {
  final int id;
  final String socialMedia;
  final String messageTitle;
  final String ageRange;
  final String gender;
  final String newReached;
  final String totalReached;
  final String status;
  final DateTime lastUpdate;

  SocialMediaAnalysis({
    required this.id,
    required this.socialMedia,
    required this.messageTitle,
    required this.ageRange,
    required this.gender,
    required this.newReached,
    required this.totalReached,
    required this.status,
    required this.lastUpdate,
  });

  factory SocialMediaAnalysis.fromJson(Map<String, dynamic> json) =>
      SocialMediaAnalysis(
        id: json["id"],
        socialMedia: json["social_media"],
        messageTitle: json["message_title"],
        ageRange: json["age_range"],
        gender: json["gender"],
        newReached: json["new_reached"],
        totalReached: json["total_reached"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
