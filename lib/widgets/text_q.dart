import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextQ extends StatelessWidget {

  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;

  const TextQ({super.key, required this.text, this.size, this.weight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: 'Montserrat',
      color: color ?? Colors.black87,
      height: 1,
      fontSize: size ?? 12,
      fontWeight: weight ?? FontWeight.normal,
    ),);
  }
}
