import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  const BoldText(
      {Key? key, required this.text, this.size, this.color, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'BalsamiqSans',

      ),
    );
  }
}

