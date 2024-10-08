import 'package:balloon_widget/balloon_widget.dart';
import 'package:flutter/material.dart';

import 'package:unithub/core/extensions/screen_size_extension.dart';

class BalloonEvent extends StatefulWidget {

  bool? showBalloon;
  final Function()? onPressed;

  BalloonEvent({
    super.key,
    this.showBalloon,
    required this.onPressed,
  });

  @override
  State<BalloonEvent> createState() => _BalloonEventState();
}

class _BalloonEventState extends State<BalloonEvent> {
   @override
   Widget build(BuildContext context) {
       return Visibility(
        visible: widget.showBalloon ?? true,
        child: Balloon(
          color: const Color(0xFFFFD2D2),
          nipPosition: BalloonNipPosition.topRight,
          child: SizedBox(
            width: context.getWidth(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          "Verificar disponibilade nesse horário",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight:
                                  FontWeight.w500),
                        ),
                        Text(
                          "Para criar um evento incrível precisamos primeiro verificar a sua disponibilidade.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight:
                                  FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: widget.onPressed,
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}