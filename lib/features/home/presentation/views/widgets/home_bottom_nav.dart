import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget{
  const HomeBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap});

  final int currentIndex;
  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
      ),
      elevation: 0,
      currentIndex: currentIndex,
      selectedItemColor: ColorsApp.primaryColor,
      unselectedItemColor: ColorsApp.thirdColor ,
      onTap: onTap,
      items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat,
            color:ColorsApp.primaryColor,),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tips_and_updates_rounded,
              color:ColorsApp.primaryColor),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call,
              color:ColorsApp.primaryColor),
          label: 'Calls',
        ),
      ],
    );
  }

}