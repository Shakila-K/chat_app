import 'package:chat_app/models/data.dart';
import 'package:chat_app/utilities/methods.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/models.dart';

class ChatTile extends StatefulWidget {
  Chat chat;
  ChatTile({super.key, required this.chat});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  Map<String, Contact> contactsMap = {
    for (var contact in DataSet.contacts) contact.id: contact,
  };

  Map<String, Group> groupsMap = {
    for (var group in DataSet.groups) group.id: group,
  };

  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: const CircleAvatar(
            radius: 25.0,
            ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.chat.receiverId.contains(RegExp('contact'))?contactsMap[widget.chat.receiverId]!.name : groupsMap[widget.chat.receiverId]!.name),
              Text(widget.chat.messages.isNotEmpty? DateTimeMethods().titleDateTime(widget.chat.messages.last.createdAt):''),
            ],
          ),
          subtitle: Row(
            children: [
              if(widget.chat.messages.isNotEmpty)
                Text(widget.chat.messages.last.message),
              if(widget.chat.messages.isEmpty)
                Text('Created on ${DateTimeMethods().extractDate(groupsMap[widget.chat.receiverId]!.createdAt)}'),
              ],
            )
          );
  }
}

class ChatWindow extends StatefulWidget {
  Chat chat;
  ChatWindow({super.key, required this.chat});

  @override
  State<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}