import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screen_scaling/flutter_screen_scaling.dart';
import 'package:trinity/ui/widgets/card/trinity_card.dart';

class Hand extends StatefulWidget {
  const Hand({super.key, required this.cardList});

  final List<Widget> cardList;

  @override
  State<Hand> createState() => _HandState();
}

class _HandState extends State<Hand> {
  bool isSelected = false;
  int? showCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (showCard != null && isSelected == true) widget.cardList[showCard!],
        Row(
          children: [
            for (int item = 0; item < widget.cardList.length; item++) ...[
              Positioned(
                left: item * -40.h,
                child: Container(
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        showCard = item;
                        isSelected = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isSelected = false;
                        showCard = null;
                      });
                    },
                    child: Transform.rotate(
                      angle:
                          ((item.px - widget.cardList.length.px * 1.px / 3.px) /
                                  widget.cardList.length.px) /
                              10.px,
                      child: widget.cardList[item],
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
