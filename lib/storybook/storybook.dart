import 'package:flutter/material.dart';
import 'package:trinity/storybook/left_panel.dart';
import 'package:trinity/storybook/right_panel.dart';

class Storybook extends StatefulWidget {
  final List<Widget> widgets;

  const Storybook({super.key, required this.widgets});

  @override
  State<Storybook> createState() => _StorybookState();
}

class _StorybookState extends State<Storybook> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftPanel(
          widgets: widget.widgets,
          selectedIndex: selectedIndex,
        ),
        const Spacer(),
        RightPanel(
          child: widget.widgets[selectedIndex],
        ),
        const Spacer(),
      ],
    );
  }
}
