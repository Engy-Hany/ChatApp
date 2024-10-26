


import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:chat_app/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/auth/presentation/views/login_screen.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({Key?key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
       textTheme: GoogleFonts.interTextTheme(),
       useMaterial3: true,
     ),
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),



    );

  }


}