import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return AppBar(
         leading: IconButton(
           icon: Icon(
             Icons.arrow_back_outlined
           ) , onPressed: () {  },
         ),
         title: Text(
           'Profile',
           style: styles.textStyle24.copyWith(
             color: ColorsApp.secondColor,
             fontWeight: FontWeight.bold,
           ),
         ),
       );
  }

}