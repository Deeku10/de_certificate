import 'dart:js';

import 'package:de_certificate/height_width.dart';
import 'package:de_certificate/models/bg_card.dart';
import 'package:de_certificate/models/button.dart';
import 'package:de_certificate/widgets/textBox.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key}) : super(key: key);
  static const id = 'username';
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
          Textbox(
            w: w,
            h: h,
          ),
          Button(
            h: context.height,
            w: context.width * 1.3,
            color: Theme.of(context).primaryColor,
            text: 'Generate username',
            pageRoute: "",
          ),
        ],
      ),
    );
  }
}
