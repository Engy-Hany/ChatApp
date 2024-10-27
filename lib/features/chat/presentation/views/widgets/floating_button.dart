import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return FloatingActionButton(
        backgroundColor: ColorsApp.primaryColor,
          onPressed: (){},
        child: Icon(
          Icons.chat,
          color: ColorsApp.fourthColor,
        ),
      );
  }

}