import 'package:flutter/material.dart';

class DropdownCategory extends StatefulWidget {

  final List<String> categories;
  String? selectedCategory;

  DropdownCategory({super.key, required this.categories, this.selectedCategory});

  @override
  State<DropdownCategory> createState() => _DropdownCategoryState();
}

class _DropdownCategoryState extends State<DropdownCategory> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (v) {
        if (v == null) {
          return "Este campo precisa ser preenchido.";
        }
        return null;
      },
      icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 30, color: Color(0xFF0880AE)),
      decoration: InputDecoration(
        hintText: "Selecione uma categoria",
        contentPadding: const EdgeInsets.all(8),
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(color: Colors.black26),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), 
          borderSide: const BorderSide(color: Colors.black26),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black26),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black26),
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black26),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent),
        ),
      ),
      value: widget.selectedCategory,
      items: widget.categories.map((c) {
        return DropdownMenuItem<String>(
          value: c,
          child: Text(c),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          widget.selectedCategory= newValue;
        });
      },
    );
  }
}
