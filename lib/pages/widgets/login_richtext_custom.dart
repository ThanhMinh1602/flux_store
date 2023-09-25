// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flux_store/resource/app_styles.dart';

class LoginRichTextCustom extends StatelessWidget {
  const LoginRichTextCustom({
    Key? key,
    required this.labe1,
    required this.labe2,
    this.onTap,
  }) : super(key: key);
  final String labe1;
  final String labe2;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: labe1,
            style: AppStyle.bl_14_400,
          ),
          const WidgetSpan(child: SizedBox(width: 7.0)),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: labe2,
            style: AppStyle.bl_14_400
                .copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
