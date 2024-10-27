import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget{
  @override
  final TextEditingController passwordController;
  final VoidCallback toogleVisibility;
  final bool isPasswordVisibility;

  const PasswordField({super.key,
    required this.passwordController,
    required this.toogleVisibility,
    required this.isPasswordVisibility});

  Widget build(BuildContext context) {
         return defaultText(
             controller: passwordController,
             type: TextInputType.visiblePassword,
             label: "Enter your password",
             hint: "your password",
             prefix: Icons.lock,
             isObscure: !isPasswordVisibility,
             suffix: isPasswordVisibility ? Icons.visibility : Icons.visibility_off_sharp,
             pressed: toogleVisibility,
               validate: (value)
               {
                  if(value.isEmpty|| value ==null)
                   {
                      return 'password must not be empty!';
                   }
                  return null;
               },
         );
  }

}