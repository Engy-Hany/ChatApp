import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget{
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  const LoginButton({super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: "Log in",
        func: (){
          if (!emailController.text.contains('@')){
            displayToasMssg('Email address isn\'t valid',context);
          }else if (passwordController.text.isEmpty){
            displayToasMssg('Password  is mandatory',context);
          }else{
            onSuccess();
          }
        }
    );
  }
  
}
displayToasMssg(String msg, BuildContext context){
  Fluttertoast.showToast(msg:msg);
}