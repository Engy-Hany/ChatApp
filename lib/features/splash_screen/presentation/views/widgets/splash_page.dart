import 'dart:async';


import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';



class SplashPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 20), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Container(
             height:200 ,
             child: Image.asset(AssetImages.logo),
           ),


            Text(
              "WhatsUp",
              style: styles.textStyle24.copyWith(
                color: ColorsApp.primaryColor,
              ),),
         SizedBox(height: 120,),
          Text('The best chat app of this century',
         style: styles.textStyle16.copyWith(
           color: ColorsApp.secondColor,
           fontWeight: FontWeight.w400,
         ),),

          ],
        ),
      ),
    );
  }

}