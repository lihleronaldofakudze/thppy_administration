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
}
