import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';

class RegisterTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Register To New Account",
      style: styles.textStyle24.copyWith(
        fontWeight: FontWeight.w900,
      ),

    );
  }

}