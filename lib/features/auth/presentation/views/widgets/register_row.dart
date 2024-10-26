import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),

          TextButton(
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text(
                'Register here',
                style: styles.textStyle16.copyWith(
                  color: ColorsApp.primaryColor,
                  fontWeight: FontWeight.w600,
                ),

              ))
        ],
      );
  }

}