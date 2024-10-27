import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class LoginTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Text(
        textAlign: TextAlign.center,
        "Log in to your account",
        style: styles.textStyle24.copyWith(
          fontWeight: FontWeight.w900,
        ),

      );
  }

}