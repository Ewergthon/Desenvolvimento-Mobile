import 'package:flutter/material.dart';

class RequiredField extends StatelessWidget {

  final String title;

  const RequiredField({ super.key, required this.title });

   @override
   Widget build(BuildContext context) {
     return Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        children: [
          TextSpan(text: title),
          const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}