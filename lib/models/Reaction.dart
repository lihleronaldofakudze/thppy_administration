// id	reaction_name	sent_by	from	last_update

class Reaction {
  final int id;
  final String reactionName;
  final String sentBy;
  final String from;
  final DateTime lastUpdate;

  Reaction({
    required this.id,
    required this.reactionName,
    required this.sentBy,
    required this.from,
    required this.lastUpdate,
  });
}
