import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/components/button/back_circle_button_custom.dart';
import 'package:flux_store/models/product_model.dart';
import 'package:flux_store/pages/widgets/active_page.dart';
import 'package:flux_store/resource/app_colors.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.productModel});
  ProductModel productModel;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.h_FFFFFF,
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            SizedBox(
              width: double.infinity,
              height: 451.0,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: widget.productModel.imageDetail![index],
                    fit: BoxFit.cover,
                  );
                },
                itemCount: widget.productModel.imageDetail?.length,
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 57.0,
                decoration: const BoxDecoration(
                  color: AppColor.h_FFFFFF,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                BackCircleButtonCustom(
                  onPressed: () {},
                ),
                const Icon(Icons.favorite)
              ],
            ),
            const Positioned(
              bottom: 68.5,
              child: ActivePage(),
            )
          ])
        ],
      ),
    );
  }
}
