import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors_app.dart';

class AddStatus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
       FloatingActionButton.small(
      backgroundColor: Colors.blueGrey[50],
      onPressed: (){},
      child: Icon(
        Icons.edit,
        color: ColorsApp.secondColor,
      ),

    ),
        SizedBox(height: 10,),
        FloatingActionButton(
          backgroundColor: ColorsApp.primaryColor,
          onPressed: (){},
          child: Icon(
            Icons.camera_alt,
            color: ColorsApp.fourthColor,
          ),
        ),
      ],
    );
  }

}