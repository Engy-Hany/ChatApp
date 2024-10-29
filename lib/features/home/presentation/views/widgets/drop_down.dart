import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/profile/presentation/views/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        offset: Offset(0,50),
        child:const Icon(
          Icons.more_vert_outlined,
          color: ColorsApp.secondColor,
        ),itemBuilder: (context)=>[
        PopupMenuItem(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: const Text('New Group',
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        )),
        PopupMenuItem(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child:const Text('Profile',
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        )),
        PopupMenuItem(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Text('Log Out',
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        ) ],
      ),
    );

  }

}
