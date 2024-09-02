import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        if (showCard != null && isSelected == true) ...[
          const Spacer(flex: 2),
          Transform.scale(
            scale: 2,
            child: widget.cardList[showCard!],
          ),
          const Spacer(),
        ],
        Transform.translate(
          offset: Offset(18.0 * widget.cardList.length, 0),
          child: Row(
            children: [
              for (int item = 0; item < widget.cardList.length; item++)
                Transform.translate(
                  offset: Offset(item * -40, 60),
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
                      angle: ((item - widget.cardList.length / 2) /
                              widget.cardList.length) *
                          0.5,
                      child: Transform.scale(
                        scale: showCard == item
                            ? 1.2
                            : 1.0, // Увеличение карты при наведении
                        child: widget.cardList[item],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
