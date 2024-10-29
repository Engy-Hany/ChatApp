import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class HomeTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      'WhatsUp',
      style: styles.textStyle24.copyWith(
        color: ColorsApp.secondColor,
      ),

    );
  }

}