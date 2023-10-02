import 'package:flutter/material.dart';
import 'package:flux_store/resource/app_styles.dart';

class TitleShowAllCustom extends StatelessWidget {
  const TitleShowAllCustom({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyle.bl_20_700,
          ),
          const Text(
            'Show all',
            style: AppStyle.gr_13_400,
          ),
        ],
      ),
    );
  }
}
