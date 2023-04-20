import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginComponent{

 static formField<Widget>({
    required TextEditingController controller,
    required String hintText,
    String? labelText,
    required bool obscureText,
    required String validatorText,
    required Icon icon,

  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validatorText;
          } else {
            return null;
          }
        },

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey, width: 3.0),
          ),
          prefixIcon: icon,
          hintText: hintText,
          labelText: labelText,
          labelStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    );
  }



}
