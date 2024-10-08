import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';

void showToastError(Object? exception, BuildContext context) {
  toastification.show(
    alignment: Alignment.bottomCenter,
    context: context,
    autoCloseDuration: const Duration(seconds: 3),
    showProgressBar: false,
    borderSide: const BorderSide(color: Colors.transparent),
    type: ToastificationType.error,
    backgroundColor: Colors.red,
    applyBlurEffect: true,
    style: ToastificationStyle.simple,
    showIcon: false,
    borderRadius: BorderRadius.circular(20),
    closeButtonShowType: CloseButtonShowType.none,
    title: Text(
      exception.toString(), 
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    ).centralized()
  );
    
}