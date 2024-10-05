import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  SizedBox height() {
    return SizedBox(height: toDouble());
  }

  SizedBox width() {
    return SizedBox(width: toDouble());
  }
}