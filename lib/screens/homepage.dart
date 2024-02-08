import 'package:chat_app/utilities/theme_data.dart';
import 'package:chat_app/widgets/chats.dart';
import 'package:chat_app/widgets/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  final appbar_title = [
    const Text('People'),
    const Text('Chats'),
    const Text('Settings'),
  ];

  final bodies = [
    const Text('People',   style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
    Chats(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.centerLeft,
          child: appbar_title[_currentIndex]),
      ),

      body: ListView(
        children: [
          bodies[_currentIndex],
        ],
        ),


      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'People',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    ),
    );
  }
}