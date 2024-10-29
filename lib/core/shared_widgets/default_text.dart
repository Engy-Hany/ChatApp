import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultText({
  required TextEditingController controller,
  required TextInputType type,
   String? label,
   IconData? prefix,
  IconData? suffix,
  bool isObscure= false,
  String?hint,
  //required String? Function(dynamic value) validator,
  FormFieldValidator? validate,
  Function()? suffixpressed,
   Function()?Ontap,
  Function()? pressed,
  //required String? Function(dynamic value) Ontap,
  bool isclicable = true,

}) => TextFormField (
  controller: controller,
  keyboardType: type,
  obscureText: isObscure,
  onTap: Ontap,
  validator: validate,
  enabled: isclicable,
  style:const TextStyle(fontSize: 18),
  decoration: InputDecoration(
    labelText: label,
    hintText: hint,
    //labelStyle: TextStyle(
     // fontSize: 15,
      //color: Color(0xffADA4A5),
    //),
    prefixIcon: Icon(
      prefix,
      //color:const Color(0xff074452),
    ),
    suffixIcon:suffix != null? IconButton(
      onPressed: pressed,
      icon: Icon(
        suffix,
       // color:const Color(0xff074452),
      ),
    ) :null,
   // fillColor: Color(0xffF7F8F8),

    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),

        ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorsApp.primaryColor,
        width: 2.0,
      ),
    ),


  ),

);