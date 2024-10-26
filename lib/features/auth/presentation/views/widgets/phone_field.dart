import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget{
  final TextEditingController phoneController;

  const PhoneField({super.key, required this.phoneController});
  @override
  Widget build(BuildContext context) {
    return defaultText(
      controller: phoneController,
      type: TextInputType.number,
      label: "Enter your phone",
      hint: "your phone",
      prefix: Icons.phone_android,
      validate: (value)
      {
        if(value.isEmpty || value ==null)
        {
          return 'phone must not be empty!';
        }
        return null;
      },

    );
  }

}