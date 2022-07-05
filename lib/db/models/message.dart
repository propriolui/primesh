class Message {
  final int? id;
  final String nodeID;
  final String text;
  final String datetime;
  final int type;
  final int received;

  Message(
      {this.id,
      required this.nodeID,
      required this.text,
      required this.datetime,
      required this.type,
      required this.received});

  factory Message.fromMap(Map<String, dynamic> json) => Message(
      id: json['id'],
      nodeID: json['nodeID'],
      text: json['text'],
      datetime: json['datetime'],
      type: json['type'],
      received: json['received']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nodeID': nodeID,
      'text': text,
      'datetime': datetime,
      'type': type,
      'received': received,
    };
  }
}
