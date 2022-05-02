// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:de_certificate/models/bg_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/HOMESCCREEN";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BG_card(
      h: h,
      w: w,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(
            h: h,
            w: w,
            text: "Institution",
            color: const Color(0xffCFC3FB).withOpacity(0.93),
            function: () {},
          ),
          SizedBox(
            height: h * 0.07,
          ),
          Button(
            h: h,
            w: w,
            text: "User",
            color: const Color(0xffA5FDF5).withOpacity(0.93),
            function: () {},
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.h,
      required this.w,
      required this.text,
      required this.color,
      required this.function})
      : super(key: key);

  final double h;
  final double w;
  final String text;
  final Color color;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function;
      },
      child: Container(
        height: h * 0.1,
        width: w * 0.55,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(h * 0.015)),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontSize: h * 0.035),
          ),
        ),
      ),
    );
  }
}
