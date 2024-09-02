import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          Transform.scale(
            scale: 1.5,
            child: widget.cardList[showCard!],
          ),
          SizedBox(height: 80.sp),
        ],
        Transform.scale(
          scale: 0.75,
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int item = 0; item < widget.cardList.length; item++)
                MouseRegion(
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
                        10.sp,
                    child: widget.cardList[item],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
