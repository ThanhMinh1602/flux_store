// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);
  final VoidCallback onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 41.0),
        decoration: const BoxDecoration(
          color: AppColor.h_2D201C,
          borderRadius: BorderRadius.all(
            Radius.circular(26.5),
          ),
        ),
        child: Text(
          label.toUpperCase(),
          style: AppStyle.w_16_700.copyWith(color: AppColor.h_FFFFFF),
        ),
      ),
    );
  }
}
