// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flux_store/gen/assets.gen.dart';

import 'package:flux_store/resource/app_colors.dart';

class BackCircleButtonCustom extends StatelessWidget {
  const BackCircleButtonCustom({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.h_FFFFFF,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.0,
                blurRadius: 3.0,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: SvgPicture.asset(
            Assets.icons.icBack,
            // ignore: deprecated_member_use
            color: AppColor.h_1E3354,
          ),
        ),
      ),
    );
  }
}
