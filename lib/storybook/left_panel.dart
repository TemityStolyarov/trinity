import 'package:flutter/material.dart';
import 'package:trinity/storybook/left_panel_item.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({
    super.key,
    required this.widgets,
    required this.selectedIndex,
  });

  final List<Widget> widgets;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < widgets.length; index++)
          LeftPanelItem(
            widgetName: widgets[index].runtimeType.toString(),
            isSelected: selectedIndex == index,
          ),
      ],
    );
  }
}
