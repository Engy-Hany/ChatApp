import 'package:chat_app/features/call/presentation/views/widgets/add_favourite.dart';
import 'package:chat_app/features/call/presentation/views/widgets/favourites_title.dart';
import 'package:chat_app/features/call/presentation/views/widgets/recent_call.dart';
import 'package:chat_app/features/call/presentation/views/widgets/recent_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';
import '../../../../../core/themes/colors_app.dart';
import '../../../../../core/themes/styles.dart';

class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         body: ListView(
           children: [
             FavouritesTitle(),
             AddFavourite(),
             RecentTitle(),
             RecentCall(),
           ],
         )

     );
  }

}