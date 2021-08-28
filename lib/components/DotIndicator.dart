import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required this.active,
  }) : super(key: key);
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: active ? 12 : 8,
      width: active ? 12 : 8,
      decoration: BoxDecoration(
        color: active ? Colors.teal[600] : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
