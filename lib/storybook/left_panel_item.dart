import 'package:flutter/material.dart';

class LeftPanelItem extends StatelessWidget {
  const LeftPanelItem({
    super.key,
    required this.widgetName,
    required this.callback,
    required this.selectedIndex,
    required this.index,
  });

  final String widgetName;
  final int selectedIndex;
  final int index;
  final ValueChanged<int> callback;

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: isSelected ? null : () => callback(index),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color:
                isSelected ? Colors.deepPurple : Colors.black.withOpacity(0.3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widgetName),
            ],
          ),
        ),
      ),
    );
  }
}
