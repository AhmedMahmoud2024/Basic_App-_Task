import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
final String hintText ;
final bool isPassword;
final IconData icon ;
final TextEditingController controller ;
final String? Function(String?)? validator;
  const CustomTextField({
    super.key, 
    required this.hintText,
     this.isPassword=false , 
     required this.icon,
      required this.controller,
       this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller,
      obscureText: isPassword,
      validator:validator,
      decoration: InputDecoration(
        hintText : hintText,
        prefixIcon: Icon(icon),
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(12)
        )
      ) 
    );
  }
}