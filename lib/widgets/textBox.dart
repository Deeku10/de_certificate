import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  const Textbox({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.6,
      child: TextField(
        style: TextStyle(
            color: Color.fromARGB(255, 49, 33, 108),
            fontWeight: FontWeight.bold,
            fontSize: h * 0.02),
        decoration: InputDecoration(
            hintText: "Enter User name",
            // labelText: "Unique name",
            labelStyle: Theme.of(context).inputDecorationTheme.labelStyle),
      ),
    );
  }
}
