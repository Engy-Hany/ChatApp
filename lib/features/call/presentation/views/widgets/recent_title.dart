import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class RecentTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Recent',
        style: styles.textStyle16.copyWith(
          color: ColorsApp.secondColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}