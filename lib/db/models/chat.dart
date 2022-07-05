class Chat {
  final int? id;
  final int nodeID;
  final String lastMsg;
  final int lasMsgDatetime;
  final int notRead;

  Chat(
      {this.id,
      required this.nodeID,
      required this.lastMsg,
      required this.lasMsgDatetime,
      required this.notRead});

  factory Chat.fromMap(Map<String, dynamic> json) => Chat(
      id: json['id'],
      nodeID: json['nodeID'],
      lastMsg: json['lastMsg'],
      lasMsgDatetime: json['lastMsgDatetime'],
      notRead: json['notRead']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nodeID': nodeID,
      'lastMsg': lastMsg,
      'lastMsgDatetime': lasMsgDatetime,
      'notRead': notRead,
    };
  }
}
