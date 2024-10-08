import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool? isSecret;
  final Icon? prefixIcon;
  final Icon? sufixIcon;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? padding;
  final int? minLines;
  final int? maxLines;

  const AppTextField({
    super.key, 
    this.onChanged, 
    this.label, 
    this.hintText, 
    this.errorText, 
    this.isSecret, 
    this.prefixIcon, 
    this.sufixIcon, 
    this.inputType,
    this.controller,
    this.validator,
    this.inputFormatters,
    this.padding,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters ?? [],
      onChanged: onChanged,
      obscureText: isSecret ?? false,
      keyboardType: inputType,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        labelText: label,
        errorText: errorText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: padding ?? const EdgeInsets.all(8),
        errorStyle: const TextStyle(color: Colors.redAccent, letterSpacing: 0.2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black26)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black26)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black26)),
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.black26)),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.redAccent)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.redAccent)),
      ),
    );
  }
}