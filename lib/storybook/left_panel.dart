import 'package:flutter/material.dart';
import 'package:trinity/storybook/left_panel_item.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({
    super.key,
    required this.widgets,
    required this.selectedIndex, required this.callback,
  });

  final List<Widget> widgets;
  final int? selectedIndex;
  final ValueChanged<int> callback;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int index = 0; index < widgets.length; index++)
            LeftPanelItem(
              widgetName: widgets[index].runtimeType.toString(),
              index: index,
              selectedIndex: selectedIndex ?? 0,
              callback: callback,
            ),
        ],
      ),
    );
  }
}
