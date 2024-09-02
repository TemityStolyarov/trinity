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
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int item = 0; item < widget.cardList.length; item++)
              Transform.translate(
                offset: Offset(item * -20.h, 0),
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
                    angle: ((item - widget.cardList.length / 3) /
                            widget.cardList.length) /
                        10,
                    child: widget.cardList[item],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
