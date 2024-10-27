import 'package:chat_app/features/chat/presentation/views/widgets/chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/floating_button.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: ChatPage(),
       floatingActionButton: FloatingButton(),
     );
  }

}