import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.h,
      required this.w,
      required this.text,
      required this.color,
      required this.pageRoute})
      : super(key: key);

  final double h;
  final double w;
  final String text;
  final Color color;
  final pageRoute;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageRoute);
      },
      child: Container(
        height: h * 0.07,
        width: w * 0.45,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(h * 0.015)),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontSize: h * 0.028),
          ),
        ),
      ),
    );
  }
}
