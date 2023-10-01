// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flux_store/gen/assets.gen.dart';

import 'package:flux_store/resource/app_colors.dart';

class CircleButtonCustom extends StatelessWidget {
  //----------
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;
  final double? height;
  final double? size;
  final Color? color;

  //Back
  const CircleButtonCustom.back({
    super.key,
    required this.onPressed,
    this.icon = Icons.arrow_back_ios_new,
    this.width = 32.0,
    this.height = 32.0,
    this.size,
    this.color = AppColor.h_1E3354,
  });

  const CircleButtonCustom.icon({
    super.key,
    required this.onPressed,
    this.icon,
    this.width = 32.0,
    this.height = 32.0,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.h_FFFFFF,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.0,
              blurRadius: 6.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
