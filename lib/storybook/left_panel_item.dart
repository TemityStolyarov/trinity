import 'package:flutter/material.dart';

class LeftPanelItem extends StatelessWidget {
  const LeftPanelItem({
    super.key,
    required this.widgetName,
    required this.isSelected,
  });

  final String widgetName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.deepPurple : Colors.black.withOpacity(0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(widgetName),
          ],
        ),
      ),
    );
  }
}
