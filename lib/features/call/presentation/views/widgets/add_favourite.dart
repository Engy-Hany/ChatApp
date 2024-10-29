import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFavourite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorsApp.primaryColor,
          radius: 25,
          child: Icon(
            Icons.favorite,
            color: ColorsApp.fourthColor,
          ),
        ),
        title: Text('Add favourite',
          style: styles.textStyle16.copyWith(
            color: ColorsApp.secondColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }

}