import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget{
  final TextEditingController emailController;

  const EmailField({super.key, required this.emailController});
  @override
  Widget build(BuildContext context) {
     return defaultText(
         controller: emailController,
         type: TextInputType.emailAddress,
         label: "Enter your email",
       hint: "your email",
       prefix: Icons.email_outlined,
       validate: (value)
       {
         if(value.isEmpty || value ==null)
         {
           return 'email must not be empty!';
         }
         return null;
       },

     );
  }

}