import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/models/category_model.dart';
import 'package:flux_store/resource/app_colors.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});
  List<IconData> listIcon = [
    Icons.male,
    Icons.female,
    Icons.account_balance_wallet_rounded,
    Icons.brush_rounded
  ];
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 36.0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38 - 26),
          child: Row(
            children: [
              ...List.generate(
                listCategory.length,
                (index) => Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        padding: const EdgeInsets.all(3.0),
                        width: 42.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 2, color: AppColor.h_3A2C27),
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColor.h_3A2C27,
                          child: Icon(
                            widget.listIcon[index],
                            color: AppColor.h_9D9D9D,
                          ),
                        ),
                      ),
                      Text(listCategory[index].categoryName ?? '')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: CachedNetworkImage(imageUrl: ),
        ),
      ],
    );
  }
}
