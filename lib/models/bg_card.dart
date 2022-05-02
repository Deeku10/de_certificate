// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BG_card extends StatelessWidget {
  const BG_card({
    Key? key,
    required this.widget,
    required this.h,
    required this.w,
  }) : super(key: key);

  final double h;
  final double w;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/bg_eth_img.jpg",
          height: h * 1,
          width: w * 1,
          fit: BoxFit.cover,
        ),
        Scaffold(
          //backgroundColor: Colors.transparent,
          //backgroundColor: const Color(0xffCFC3FB),
          body: Container(
            margin: EdgeInsets.only(left: w * 0.1, top: h * 0.3),
            decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables

              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffD3F5F3).withOpacity(0.62),
                        Color(0xffD3F5F3).withOpacity(0.62),
                      ],
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                    ),
                    color: Color(0xffCEDDDC).withOpacity(0.7),
                  ),
                  height: h * 0.6,
                  width: w * 0.8,
                  child: widget,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
