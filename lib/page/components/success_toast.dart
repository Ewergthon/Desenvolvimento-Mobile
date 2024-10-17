import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';

void showToastSuccess(BuildContext context, String message) {
  toastification.show(
    alignment: Alignment.bottomCenter,
    context: context,
    autoCloseDuration: const Duration(seconds: 3),
    showProgressBar: false,
    type: ToastificationType.success,
    applyBlurEffect: true,
    style: ToastificationStyle.simple,
    borderSide: const BorderSide(color: Colors.transparent),
    backgroundColor: Colors.green,
    borderRadius: BorderRadius.circular(20),
    closeButtonShowType: CloseButtonShowType.none,
    title: Text(
      message, 
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    ).centralized(),
  );
}