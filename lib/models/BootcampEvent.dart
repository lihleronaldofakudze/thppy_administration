// id	bootcamp_name	country_name	region_name	center_name	trainer_name	description	venue	date	Bootcamp_image	Number_of_seats	Event_name	status	last_update

class BootcampEvent {
  final int id;
  final String bootcampName;
  final String countryName;
  final String regionName;
  final String centerName;
  final String trainerName;
  final String description;
  final String venue;
  final String date;
  final String bootcampImage;
  final int numberOfSeats;
  final String eventName;
  final String status;
  final DateTime lastUpdate;

  BootcampEvent({
    required this.id,
    required this.bootcampName,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.trainerName,
    required this.description,
    required this.venue,
    required this.date,
    required this.bootcampImage,
    required this.numberOfSeats,
    required this.eventName,
    required this.status,
    required this.lastUpdate,
  });

  factory BootcampEvent.fromJson(Map<String, dynamic> json) => BootcampEvent(
        id: json["id"],
        bootcampName: json["bootcamp_name"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        centerName: json["center_name"],
        trainerName: json["trainer_name"],
        description: json["description"],
        venue: json["venue"],
        date: json["date"],
        bootcampImage: json["Bootcamp_image"],
        numberOfSeats: json["Number_of_seats"],
        eventName: json["Event_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
