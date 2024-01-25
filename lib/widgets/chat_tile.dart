import 'package:chat_app/models/data.dart';
import 'package:chat_app/utilities/methods.dart';
import 'package:chat_app/utilities/theme_data.dart';
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
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatWindow(chat: widget.chat)));
      },
      child: ListTile(
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
            ),
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
  Map<String, Contact> contactsMap = {
    for (var contact in DataSet.contacts) contact.id: contact,
  };

  Map<String, Group> groupsMap = {
    for (var group in DataSet.groups) group.id: group,
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25.0,
                ),
              const SizedBox(width: 10.0,),
              Text(widget.chat.receiverId.contains(RegExp('contact'))?contactsMap[widget.chat.receiverId]!.name : groupsMap[widget.chat.receiverId]!.name),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (var message in widget.chat.messages)
                    Align(
                      alignment: Alignment.centerRight,
                      child: UnconstrainedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Message Body :'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(message.message, style: const TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Created :'),
                                  const SizedBox(width: 10.0,),
                                  Row(
                                    children: [
                                      Text(DateTimeMethods().extractDate(message.createdAt)),
                                      const SizedBox(width: 10.0,),
                                      Text(DateTimeMethods().extractTime(message.createdAt)),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Delivery :'),
                                  const SizedBox(width: 10.0,),
                                  Row(
                                    children: [
                                      Text(DateTimeMethods().extractDate(message.sentAt)),
                                      const SizedBox(width: 10.0,),
                                      Text(DateTimeMethods().extractTime(message.sentAt)),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: ScreenSize().getScreenWidth(context)*0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type your message here',
                          suffixIcon: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.send),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        
      ),
    );
  }
}