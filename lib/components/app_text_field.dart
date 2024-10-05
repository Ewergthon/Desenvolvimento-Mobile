import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? label;
  final String? errorText;
  final bool? isSecret;
  final Icon? prefixIcon;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key, 
    this.onChanged, 
    this.label, 
    this.errorText, 
    this.isSecret, 
    this.prefixIcon, 
    this.inputType,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscureText: isSecret ?? false,
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: label,
        errorText: errorText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(8),
        errorStyle: const TextStyle(color: Colors.redAccent, letterSpacing: 0.2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: const BorderSide(color: Colors.white)),
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: const BorderSide(color: Colors.redAccent)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: const BorderSide(color: Colors.redAccent)),
      ),
    );
  }
}