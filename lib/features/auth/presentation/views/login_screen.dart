import 'package:chat_app/features/auth/presentation/views/widgets/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return SafeArea(
          child:Scaffold(
            body: LoginPage(),
          )
      );
  }

}