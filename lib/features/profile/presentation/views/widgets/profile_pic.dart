import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';
import '../../../../../core/themes/colors_app.dart';

class ProfilePic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage:  AssetImage(AssetImages.statusPic),
              radius: 60,
            ),
            Positioned(
                bottom: 0,
                right: 6,
                child: CircleAvatar(
                  backgroundColor: ColorsApp.primaryColor,
                  radius: 16,
                  child: Icon(
                    Icons.edit,
                    color: ColorsApp.fourthColor,
                    size: 18,
                  ),
                ),)
          ],
        ),
      );
  }

}