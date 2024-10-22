


import 'package:chat_app/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({Key?key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),



    );

  }


}