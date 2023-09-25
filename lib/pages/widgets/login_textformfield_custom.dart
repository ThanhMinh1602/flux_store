// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

class LoginTextFormFieldCustom extends StatelessWidget {
  const LoginTextFormFieldCustom({
    Key? key,
    this.controller,
    this.textInputAction,
    this.keyboardType,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.onFieldSubmitted,
  }) : super(key: key);
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: AppStyle.bl_14_300,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.h_D6D6D6),
        ),
      ),
    );
  }
}
