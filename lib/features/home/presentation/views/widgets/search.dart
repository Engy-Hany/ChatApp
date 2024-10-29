import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {  },
      icon: Icon(
        Icons.search,
        color: ColorsApp.secondColor,
      ),

    );
  }
}