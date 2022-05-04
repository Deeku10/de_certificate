// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:de_certificate/height_width.dart';
import 'package:de_certificate/models/bg_card.dart';
import 'package:de_certificate/models/button.dart';
import 'package:de_certificate/screens/ins_log_sign.dart';
import 'package:de_certificate/screens/username_generation.dart';
import 'package:de_certificate/widgets/verticalSpace.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/HOMESCCREEN";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = context.height;
    var w = context.width;

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
            text: "Get User Name",
            color: const Color(0xffCFC3FB).withOpacity(0.93),
            pageRoute: UserName.id,
          ),
          VerticalSpace(
            h: h * 0.04,
          ),
          Text(
            "Already have a user name?",
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontSize: h * 0.02),
          ),
          VerticalSpace(
            h: h * 0.026,
          ),
          Button(
            h: h,
            w: w,
            text: "let's Go",
            color: const Color(0xffA5FDF5).withOpacity(0.93),
            pageRoute: Ins_Log_Sign.id,
          )
        ],
      ),
    );
  }
}
