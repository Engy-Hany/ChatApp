

import 'package:chat_app/features/home/presentation/views/widgets/home_title.dart';
import 'package:chat_app/features/home/presentation/views/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../call/presentation/views/call_screen.dart';
import '../../../../chat/presentation/views/chat_screen.dart';
import '../../../../status/presentation/views/status_screen.dart';
import 'drop_down.dart';
import '../../../../chat/presentation/views/widgets/floating_button.dart';
import 'home_bottom_nav.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;

  List<Widget> screens =[
    ChatScreen(),
    StatusScreen(),
    CallScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeTitle(),
        actions: [
          Search(),
          SizedBox(width: 5,),
          DropDown(),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: HomeBottomNav(
        currentIndex: currentIndex,
        onTap: (int value) {
          setState(() {
            currentIndex=value;
          });
        },
      ),

    );



  }
}
