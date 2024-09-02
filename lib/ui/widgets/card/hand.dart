import 'package:flutter/material.dart';
import 'package:flutter_screen_scaling/flutter_screen_scaling.dart';

class Hand extends StatelessWidget {
  const Hand({super.key, required this.cardList});

  final List<Widget> cardList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int item = 0; item < cardList.length; item++)
          Container(
            padding: EdgeInsets.only(
              left: item.px * 100.px,
            ),
            child: Transform.rotate(
              angle: ((item.px - cardList.length.px * 1.px / 3.px) /
                      cardList.length.px) /
                  10.px,
              child: cardList[item],
            ),
          ),
      ],
    );
  }
}
