import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SaveButton extends StatelessWidget{
  final TextEditingController nameController;
  final TextEditingController phoneController;

  const SaveButton({super.key,
    required this.nameController,
    required this.phoneController,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomButton(
          text: "Save Profile",
          textColor: ColorsApp.fourthColor,
          fontSized: 18,
          func: (){
            if (nameController.text.isEmpty){
              displayToasMssg('please enter your name',context);
            }else if (phoneController.text.isEmpty){
              displayToasMssg('please enter your phone',context);
            }else{
              displayToasMssg('Data of profile is saved',context);
            }
          }
      ),
    );
  }

}
displayToasMssg(String msg, BuildContext context){
  Fluttertoast.showToast(msg:msg);
}