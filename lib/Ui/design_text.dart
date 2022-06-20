import 'package:flutter/material.dart';

class DesignText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const DesignText({
    required this.text,
    this.color,
    this.fontSize,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16,
        color: color,
      ),
    );
  }
}
