import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: ScreenSize().getScreenWidth(context)*0.9,
            padding: EdgeInsets.symmetric(horizontal: ScreenSize().getScreenWidth(context)*0.05, vertical: ScreenSize().getScreenHeight(context)*0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 35.0,
                      ),
                    SizedBox(width: ScreenSize().getScreenWidth(context)*0.05),
                    const Text('John Doe', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ],
                ),
                
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit),)
              ],
            ),
          )
      
      
        ],
      ),
    );
  }
}