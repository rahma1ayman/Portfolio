
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget{
  final TextEditingController controller;
  final String label;
  final String hintText;
  const CustomTextFormField({super.key, required this.label, required this.hintText, required this.controller});
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

}