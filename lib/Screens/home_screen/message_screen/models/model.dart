// class MessagesModel{
//   String title;
//   String subtitle;
//   String trading;
//   String imageLeading;
//   MessagesModel({required this.title,required this.imageLeading,required this.subtitle,required this.trading});
// }
// Dart class representing an individual job item
class MessageData {
  final int id;
  final String name;
  final String email;
  final String about;



  MessageData({
    required this.id,
    required this.name,
    required this.email,
    required this.about,

  });

  factory MessageData.fromJson(Map<String, dynamic> json) {
    return MessageData(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      about: json['about'],



    );
  }

}

// class UserList {
//   final List<MessageData> messages;
//   UserList({required this.messages});
//   factory UserList.fromJson(List<dynamic> json) {
//     List<MessageData> messages = json.map((messageData) => MessageData.fromJson(messageData)).toList();
//     return UserList(messages: messages);
//   }
//
// }





