// id	media_catagory	due_date	show_name	channel_name	description	status	last_update

class Media {
  final int id;
  final String mediaCatagory;
  final String dueDate;
  final String showName;
  final String channelName;
  final String description;
  final String status;
  final DateTime lastUpdate;

  Media({
    required this.id,
    required this.mediaCatagory,
    required this.dueDate,
    required this.showName,
    required this.channelName,
    required this.description,
    required this.status,
    required this.lastUpdate,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        mediaCatagory: json["media_catagory"],
        dueDate: json["due_date"],
        showName: json["show_name"],
        channelName: json["channel_name"],
        description: json["description"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}
