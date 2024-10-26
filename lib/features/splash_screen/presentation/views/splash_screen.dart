import 'package:chat_app/features/splash_screen/presentation/views/widgets/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
       body: SplashPage(),
      ));
  }

}