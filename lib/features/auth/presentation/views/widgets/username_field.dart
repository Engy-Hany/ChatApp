import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget{
  final TextEditingController usernameController;

  const UsernameField({super.key, required this.usernameController});
  @override
  Widget build(BuildContext context) {
    return defaultText(
      controller: usernameController,
      type: TextInputType.name,
      label: "Enter your name",
      hint: "your name",
      prefix: Icons.person,
      validate: (value)
      {
        if(value.isEmpty || value ==null)
        {
          return 'name must not be empty!';
        }
        return null;
      },

    );
  }

}