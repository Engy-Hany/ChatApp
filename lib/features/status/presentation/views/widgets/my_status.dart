
import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class MyStatus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return  ListView(
         shrinkWrap: true,
          children: [
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage:  AssetImage(AssetImages.statusPic),
                    radius: 35,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 6,
                      child: Container(
                        //height: 20,
                       // width: 20,
                        decoration: BoxDecoration(
                            color: ColorsApp.fourthColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorsApp.primaryColor,
                              width: 2,
                            )
                        ),
                        child: Icon(
                          Icons.add,
                          color: ColorsApp.primaryColor,
                          size: 15,
                        ),
                      )),
                ],
              ),
              title: Text(
                  'My Status',
                style: styles.textStyle16.copyWith(
                  color: ColorsApp.secondColor,
                  fontWeight: FontWeight.bold
                )
              ),
              subtitle: Text(
                'Tap to add status update',
                style: styles.textStyle16.copyWith(
                  color: ColorsApp.thirdColor,
                  fontWeight: FontWeight.bold
                )

              ),

            ),
          ],
       );

  }


}