import 'package:de_certificate/models/bg_card.dart';
import 'package:de_certificate/widgets/textBox.dart';
import 'package:flutter/material.dart';
import 'package:de_certificate/height_width.dart';
import 'package:de_certificate/models/bg_card.dart';
import 'package:de_certificate/models/button.dart';

class Ins_Log_Sign extends StatelessWidget {
  const Ins_Log_Sign({Key? key}) : super(key: key);
  static const id = "/InsLogin";
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
              color: Theme.of(context).primaryColor,
              h: h,
              w: w,
              text: "Upload",
              pageRoute: "",
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Button(
                h: h,
                w: w,
                text: "Get IPFS",
                color: const Color(0xffCFC3FB).withOpacity(0.93),
                pageRoute: ""),
            Textbox(w: w, h: h),
            SizedBox(
              height: h * 0.03,
            ),
            Button(
              color: Theme.of(context).primaryColor,
              h: h,
              w: w,
              text: "Store",
              pageRoute: "",
            ),
          ]),
    );
  }
}
