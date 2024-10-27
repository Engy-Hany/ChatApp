import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/register_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/home_screen.dart';
import '../register_screen.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  bool isPasswordVisible=false;

  Widget build(BuildContext context) {
     return Form(
       autovalidateMode: AutovalidateMode.always,
       key: _formKey,
       child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               LogoWidgets(),
               LoginTitle(),
               SizedBox(height: 30),
               EmailField(emailController: emailController,),
               SizedBox(height: 30),
               PasswordField(
                   passwordController:passwordController ,
                   toogleVisibility: (){
                     setState(() {
                       isPasswordVisible = !isPasswordVisible;
                       //suffix=isPasswordVisible? Icons.visibility_off_sharp : Icons.visibility_sharp;
                     });
                   },
                   isPasswordVisibility: isPasswordVisible),

               SizedBox(height:50 ),
               LoginButton(
                   emailController: emailController,
                   passwordController: passwordController,
                   onSuccess: (){
                     Navigator.pushReplacement(
                         context,
                       MaterialPageRoute(builder: (context) => RegisterScreen())
                     );}
                   ),

               SizedBox(height: 20,),
               RegisterRow(),
             ],
           ),
         ),
       ),
     );
  }
}