



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/splash_screen/splash.dart';
void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({Key?key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
          return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.white
            ),
            debugShowCheckedModeBanner: false,
            home: Splash(),






    );

  }


}