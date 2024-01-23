
class Contact{
  String id;
  String name;
  String email;
  String profilePhotoUri;

  Contact({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePhotoUri,
  });
}

class Group{
  String id;
  String name;
  String profilePhotoUri;
  DateTime createdAt;
  List<Contact> members;

  Group({
    required this.id,
    required this.name,
    required this.profilePhotoUri,
    required this.createdAt,
    required this.members,
  });
}

class Message{
  String message;
  DateTime createdAt;
  DateTime sentAt;
  bool isRead;

  Message({
    required this.message,
    required this.createdAt,
    required this.sentAt,
    required this.isRead,
  });
}

class Chat{
  String senderEmail;
  String receiverId;
  List<Message> messages;
  
  Chat({
    required this.senderEmail,
    required this.receiverId,
    required this.messages,
  });

}