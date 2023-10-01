import 'package:flutter/material.dart';
import 'package:flux_store/models/banner_model.dart';
import 'package:flux_store/pages/home_page.dart';
import 'package:flux_store/resource/app_colors.dart';

class ActivePage extends StatelessWidget {
  const ActivePage({
    super.key,
    this.widget,
  });

  final HomePage? widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            listBannerModels.length,
            (index) => Container(
              padding: const EdgeInsets.all(1.5),
              width: 10.5,
              height: 10.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: widget?.currentPage == index
                        ? AppColor.h_FFFFFF
                        : Colors.transparent),
              ),
              child: const CircleAvatar(
                radius: 5.5,
                backgroundColor: AppColor.h_FFFFFF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
