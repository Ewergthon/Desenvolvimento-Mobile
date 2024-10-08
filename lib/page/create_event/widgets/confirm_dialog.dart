import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/gen/assets.gen.dart';

void showConfirmDialog(BuildContext context) {
  showDialog(
    context: context, 
    builder: (context) {
      return AlertDialog.adaptive(
        backgroundColor: const Color(0xFF69645A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.unithubYellow, width: 40, height: 38),
            5.width(),
            const Text(
              "Atenção!", 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ],
        ),
        content: const Text(
          "Seu evento será analisado pela equipe da UNIT para ser avaliado e validado, aguarde pela confirmação.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 26),
              elevation: 4,
              backgroundColor: const Color(0xFFFDBC14),
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(11),
              ),
            ),
            onPressed: () => context.pop(),
            child: const Text(
              "Continuar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
            ),
          ),
        ],
      );
    },
  );
}