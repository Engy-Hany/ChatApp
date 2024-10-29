import 'package:chat_app/features/call/presentation/views/call_screen.dart';
import 'package:chat_app/features/home/presentation/views/widgets/drop_down.dart';
import 'package:chat_app/features/chat/presentation/views/widgets/floating_button.dart';
import 'package:chat_app/features/home/presentation/views/widgets/home_bottom_nav.dart';
import 'package:chat_app/features/home/presentation/views/widgets/home_page.dart';
import 'package:chat_app/features/home/presentation/views/widgets/home_title.dart';
import 'package:chat_app/features/home/presentation/views/widgets/search.dart';
import 'package:chat_app/features/status/presentation/views/status_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}