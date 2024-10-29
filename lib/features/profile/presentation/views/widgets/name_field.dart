import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget{
  final TextEditingController nameController;

  const NameField({super.key, required this.nameController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name',
            style: styles.textStyle16.copyWith(
              color: ColorsApp.thirdColor,
            ),
          ),
          SizedBox(height: 20,),
        defaultText(
        controller: nameController,
        type: TextInputType.name,
        hint: "your name",
        prefix: Icons.person,
        validate: (value)
        {
          if(value.isEmpty || value ==null)
          {
            return 'Please enter your name';
          }
          return null;
        },

      )
        ],
      ),
    );
  }

}