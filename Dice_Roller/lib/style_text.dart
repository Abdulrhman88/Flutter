import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});

  final text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
        ));
  }
}
