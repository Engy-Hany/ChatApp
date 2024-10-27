import 'package:chat_app/core/themes/colors_app.dart';
import 'package:chat_app/features/auth/presentation/views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return InkWell(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person,
                  color: Colors.white,),
                backgroundColor: ColorsApp.thirdColor,
                radius: 20,
              ),
              title: Text('Engy Hany'+index.toString()),
              subtitle: Text('This is the last message',
              ),
              trailing: Column(
                children: [
                  Text('12:00 PM'),
                  SizedBox(height: 8,),
                  CircleAvatar(
                    radius: 10,
                    child: Center(child: Text('4',
                      style: TextStyle(color: ColorsApp.fourthColor,
                          fontSize: 10),
                    ),
                    ),
                    backgroundColor: ColorsApp.primaryColor,
                  )
                ],
              ),
            ),
          );

        },
      ),
    );
  }

}