import 'package:chat_app/features/status/presentation/views/widgets/my_status.dart';
import 'package:chat_app/features/status/presentation/views/widgets/recent_updates.dart';
import 'package:chat_app/features/status/presentation/views/widgets/title_viewed_updates.dart';
import 'package:chat_app/features/status/presentation/views/widgets/viewed_updates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'title_recent_updates.dart';

class StatusPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          MyStatus(),
          const SizedBox(height: 15,),
          TitleRecentUpdates(),
          const SizedBox(height: 5,),
          RecentUpdates(),
          const SizedBox(height: 25,),
          TitleViewedUpdates(),
          const SizedBox(height: 5,),
          ViewedUpdates(),
      
        ],
      ),
    );
  }

}

