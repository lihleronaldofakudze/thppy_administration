class About {
  final int id;
  final String description;
  final String goals;
  final String contact;
  final String email;
  final String physicalAddress;
  final String location;
  final String facebookLink;
  final String twitterLink;
  final String instagramLink;
  final String whatsappLink;
  final String tiktokLink;
  final String status;
  final String lastUpdate;

  About({
    required this.id,
    required this.description,
    required this.goals,
    required this.contact,
    required this.email,
    required this.physicalAddress,
    required this.location,
    required this.facebookLink,
    required this.twitterLink,
    required this.instagramLink,
    required this.whatsappLink,
    required this.tiktokLink,
    required this.status,
    required this.lastUpdate,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
        id: json["id"],
        description: json["description"],
        goals: json["goals"],
        contact: json["contact"],
        email: json["email"],
        physicalAddress: json["physical_address"],
        location: json["location"],
        facebookLink: json["facebook_link"],
        twitterLink: json["twitter_link"],
        instagramLink: json["instagram_link"],
        whatsappLink: json["whatsapp_link"],
        tiktokLink: json["tiktok_link"],
        status: json["status"],
        lastUpdate: json["last_update"],
      );
}
