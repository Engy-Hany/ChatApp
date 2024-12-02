import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/name_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/phone_profile_field.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_appbar.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/profile_pic.dart';
import 'package:chat_app/features/profile/presentation/views/widgets/save_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    nameController.text = 'Engy Hany';
    phoneController.text ='+01274256460';
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             ProfileAppbar(),
              Divider(thickness: 1,
                color: ColorsApp.thirdColor,
              ),
              ProfilePic(),
              Divider(thickness: 1,
                color: ColorsApp.thirdColor,
              ),
              NameField(nameController:nameController ),
              SizedBox(height: 10,),
              PhoneProfileField(phoneController: phoneController),
              SizedBox(height: 20,),
              SaveButton(
                nameController: nameController,
                phoneController: phoneController,),
            ],
          ),
        ),
      );
  }

}