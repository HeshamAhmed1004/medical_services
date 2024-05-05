
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({required this.hint,this.onChanged,this.hidePassword=false});
String ? hint;
bool ?hidePassword;

Function(String) ? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidePassword!,
      validator: (value) {
        if (value!.isEmpty)
          {
           return ('Required Field');
          }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        // fillColor: Colors.white,
        // filled: true,
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(

          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
