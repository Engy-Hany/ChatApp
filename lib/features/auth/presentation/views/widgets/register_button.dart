import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterButton extends StatelessWidget{
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;
  final TextEditingController phoneController;
  final VoidCallback onSuccess;

  const RegisterButton({super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
    required this.usernameController,
    required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: "Sign Up",
        func: (){
          if (!emailController.text.contains('@')){
            displayToasMssg('Email address isn\'t valid',context);
          }else if (passwordController.text.isEmpty){
            displayToasMssg('Password  is mandatory',context);
          }else if (usernameController.text.isEmpty){
            displayToasMssg('username  is mandatory',context);
          }else if (phoneController.text.isEmpty){
            displayToasMssg('phone  is mandatory',context);
          }
          else{
            onSuccess();
          }
        }
    );
  }

}
displayToasMssg(String msg, BuildContext context){
  Fluttertoast.showToast(msg:msg);
}