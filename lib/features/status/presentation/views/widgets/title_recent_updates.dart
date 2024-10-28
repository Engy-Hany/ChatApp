import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class TitleRecentUpdates extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 20
        ),
        child: Text(
          'Recent updates',
          style: styles.textStyle16.copyWith(
            color: ColorsApp.thirdColor,
            fontWeight: FontWeight.bold
          ),
        ),
      );
  }

}