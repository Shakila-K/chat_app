import 'package:chat_app/models/models.dart';
import 'package:chat_app/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/data.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  
  List<Contact> contacts = DataSet.contacts;
  List<Chat> chats = DataSet.chats;
  List<Group> groups = DataSet.groups;

  Map<String, Chat> chatsMap = {
    for (var chat in DataSet.chats) chat.receiverId: chat,
  };

  Map<String, Contact> contactsMap = {
    for (var contact in DataSet.contacts) contact.id: contact,
  };

  Map<String, Group> groupsMap = {
    for (var group in DataSet.groups) group.id: group,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var chat in chats) 
        ChatTile(chat: chat)
        ],
      );
    }
}