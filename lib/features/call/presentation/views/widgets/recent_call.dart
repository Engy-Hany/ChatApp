import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';
import '../../../../../core/themes/colors_app.dart';
import '../../../../../core/themes/styles.dart';

class RecentCall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder:  (context,index){
               return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:  AssetImage(AssetImages.statusPic),
                    radius: 35,
                  ),
                  title: Text(
                    'Marwan Ali',
                    style: styles.textStyle16.copyWith(
                      color: ColorsApp.secondColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_made,
                        color: ColorsApp.primaryColor,
                      ),
                      Text(
                        'Today, 12:00 PM',
                        style: styles.textStyle16.copyWith(
                          color: ColorsApp.thirdColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {  },
                    icon: Icon(
                      Icons.call,
                      color: ColorsApp.secondColor,
                    ),
                  ),
                );

          });
  }

}