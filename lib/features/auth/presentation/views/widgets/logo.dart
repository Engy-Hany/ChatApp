import 'package:flutter/cupertino.dart';

import '../../../../../core/constants/asset_images.dart';


class LogoWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     alignment: Alignment.topCenter,
     child: Image.asset(
         AssetImages.logo,
       width: 250,
       height: 200,
     ),
   );
  }
}