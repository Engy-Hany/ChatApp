import 'dart:async';
import 'package:chat_app/features/auth/views/widgets/login_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>LoginBody()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Container(
            width: 200,
              height: 200,
              child: Image.asset('images/whats.png',)),
            Text(
              "WhatsUp",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
        SizedBox(height: 150,),
          Text('The best chat app of this century',
          style: TextStyle(
            fontSize: 15,
          ),),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10
              ),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: (){
                    }, child: Text('Continue',
                  style: TextStyle(
                      color: Colors.white
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}