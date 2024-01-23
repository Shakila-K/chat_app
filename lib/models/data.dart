import 'package:chat_app/models/models.dart';

class DataSet {
  
  static List<Contact> contacts = [
    Contact(
      id: 'contact1',
      name: 'Saman Kumara',
      email: 'saman@gmail.com',
      profilePhotoUri: 'photo.jpg'
    ),
    Contact(
      id: 'contact2',
      name: 'Gayan Herath',
      email: 'gayan@gmail.com',
      profilePhotoUri: 'photo.jpg'
    ),
    Contact(
      id: 'contact3',
      name: 'Kasun Perera',
      email: 'kasun@gmail.com',
      profilePhotoUri: 'photo.jpg'
    ),
    Contact(
      id: 'contact4',
      name: 'Ravindu Silva',
      email: 'ravi@gmail.com',
      profilePhotoUri: 'photo.jpg'
    ),
    Contact(
      id: 'contact5',
      name: 'Priyan Bandara',
      email: 'priyan@gmail.com',
      profilePhotoUri: 'photo.jpg'
    ),
  ];

  static List <Group> groups = [
    Group(
      id: 'group1',
      name: 'Group 1',
      profilePhotoUri: 'photo.jpg',
      createdAt: DateTime(2024,1,2,12,0),
      members: [
        contacts[0],
        contacts[1],
        contacts[2],
      ]
    ),
    Group(
      id: 'group2',
      name: 'Group 2',
      profilePhotoUri: 'photo.jpg',
      createdAt: DateTime(2024,1,3,12,0),
      members: [
        contacts[3],
        contacts[4],
      ]
    ),
  ];

  static List<Chat> chats = [
    Chat(
      senderEmail: 'mymail@google.com',
      receiverId: 'contact1',
      messages: [
        Message(
          message: 'Hello',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,10),
          isRead: true,
        ),
        Message(
          message: 'How are you?',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,11),
          isRead: true,
        ),
        Message(
          message: 'I am fine',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,12),
          isRead: true,
        ),
      ],
    ),
    
    Chat(
      senderEmail: 'mymail@google.com',
      receiverId: 'contact2',
      messages: [
        Message(
          message: 'Hello',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,10),
          isRead: true,
        ),
        Message(
          message: 'How are you?',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,11),
          isRead: true,
        ),
        Message(
          message: 'I am fine',
          createdAt: DateTime(2024,1,22,12,0),
          sentAt: DateTime(2024,1,22,12,12),
          isRead: true,
        ),
      ],
    ),

    Chat(
      senderEmail: 'mymail@google.com',
      receiverId: 'group1',
      messages: [
        Message(
          message: 'Hello',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,10),
          isRead: true,
        ),
        Message(
          message: 'How are you?',
          createdAt: DateTime(2024,1,1,12,0),
          sentAt: DateTime(2024,1,1,12,11),
          isRead: true,
        ),
        Message(
          message: 'I am fine',
          createdAt: DateTime(2024,1,23,12,0),
          sentAt: DateTime(2024,1,23,12,12),
          isRead: true,
        ),
      ],
    ),
    Chat(
      senderEmail: 'mymail@google.com',
      receiverId: 'group2',
      messages: [
      ],
    ),
  ];

}