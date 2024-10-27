import 'package:chat_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/register_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/register_title.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/username_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/home_screen.dart';
import '../login_screen.dart';
import 'email_field.dart';
import 'login_row.dart';
class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();
  bool isPasswordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidgets(),
              RegisterTitle(),
              const SizedBox(height: 20,),
              UsernameField(
                usernameController: usernameController,
              ),
             const SizedBox(height: 20,),
              EmailField(
                emailController: emailController,
              ),
             const SizedBox(height: 20,),
              PhoneField(
                  phoneController: phoneController
              ),
              const SizedBox(height: 20,),
              PasswordField(
                  passwordController:passwordController ,
                  toogleVisibility: (){
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                      //suffix=isPasswordVisible? Icons.visibility_off_sharp : Icons.visibility_sharp;
                    });
                  },
                  isPasswordVisibility: isPasswordVisible),
              const SizedBox(height: 20,),
              RegisterButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  onSuccess: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  usernameController: usernameController,
                  phoneController: phoneController),
              const SizedBox(height: 20,),
              LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}