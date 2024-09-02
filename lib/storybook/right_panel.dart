import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: child,
    );
  }

}