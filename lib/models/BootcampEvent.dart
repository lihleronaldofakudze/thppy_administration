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
}
