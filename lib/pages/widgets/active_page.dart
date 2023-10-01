// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flux_store/resource/app_colors.dart';

class ActivePage extends StatelessWidget {
  final int? currentPage;
  final int? length;
  final Color? color;
  const ActivePage({
    Key? key,
    this.currentPage,
    this.length,
    this.color = AppColor.h_FFFFFF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            length!,
            (index) => Container(
              padding: const EdgeInsets.all(1.5),
              width: 10.5,
              height: 10.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: currentPage == index ? color! : Colors.transparent),
              ),
              child:  CircleAvatar(
                radius: 5.5,
                backgroundColor: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
