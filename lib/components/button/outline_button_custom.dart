// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

class OutlineCustomButton extends StatelessWidget {
  const OutlineCustomButton({
    Key? key,
    required this.onTap,
    required this.label,
  }) : super(key: key);
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 53.0),
        decoration: BoxDecoration(
          color: AppColor.h_FFFFFF.withOpacity(0.25),
          borderRadius: BorderRadius.circular(29.5),
          border: Border.all(
            color: AppColor.h_FFFFFF,
            width: 1.0,
          ),
        ),
        child: Text(
          label,
          style: AppStyle.w_16_700,
        ),
      ),
    );
  }
}
