import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final bool bold;

  const MyText({super.key, required this.text, required this.color, this.size = 15, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: bold ? FontWeight.bold : null,
        ),
      ),
    );
  }
}
