import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';

class ViewedUpdates extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder:  (context,index){
          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: ColorsApp.fourthColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorsApp.thirdColor,
                    width: 2,
                  )
              ),
              child: CircleAvatar(
                backgroundImage:  AssetImage(AssetImages.statusPic),
                radius: 35,
              ),
            ),
            title: Text(
              'Marwan Ali',
              style: styles.textStyle16.copyWith(
                color: ColorsApp.secondColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Today, 12:00 PM',
              style: styles.textStyle16.copyWith(
                color: ColorsApp.thirdColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        });
  }

}