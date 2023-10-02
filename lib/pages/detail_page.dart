import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/components/button/circle_button_custom.dart';
import 'package:flux_store/models/product_model.dart';
import 'package:flux_store/pages/widgets/active_page.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.productModel});

  int curent = 0;
  int sizeCurent = 0;
  ProductModel productModel;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PageController _pageController = PageController(initialPage: 0);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final product = widget.productModel;
    return Scaffold(
      backgroundColor: AppColor.h_FFFFFF,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 451.0,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int value) {
                      setState(() {
                        widget.curent = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return CachedNetworkImage(
                        imageUrl: product.imageDetail![index],
                        fit: BoxFit.cover,
                      );
                    },
                    itemCount: product.imageDetail?.length,
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
                Positioned(
                  top: MediaQuery.of(context).padding.top + 24.0,
                  left: 32.0,
                  right: 32.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleButtonCustom.back(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CircleButtonCustom.icon(
                        onPressed: () {},
                        icon: Icons.favorite,
                        size: 20,
                        color: Colors.pink,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 68.5,
                  child: ActivePage(
                    length: product.imageDetail?.length,
                    currentPage: widget.curent,
                    color: AppColor.h_4F4F4F,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0)
                  .copyWith(bottom: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name ?? '',
                    style: AppStyle.bl_18_700,
                  ),
                  const Spacer(),
                  Text(
                    '\$ ${product.price}',
                    style: AppStyle.bl_26_700,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0)
                  .copyWith(bottom: 21.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ...List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      color: AppColor.h_508A7B,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text(
                    '(${product.raitingStar})',
                    style:
                        AppStyle.bl_14_400.copyWith(color: AppColor.h_1D1F22),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32.0)
                  .copyWith(bottom: 15.0),
              width: double.infinity,
              height: 1.0,
              color: AppColor.h_F3F3F6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32)
                  .copyWith(bottom: 33.0),
              child: Row(
                children: [
                  //Color
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Color',
                        style: AppStyle.gr_14_400,
                      ),
                      const SizedBox(height: 11.0),
                      Row(
                        children: [
                          ...List.generate(
                            product.colors!.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.curent = index;
                                  _pageController.jumpToPage(index);
                                });
                                print(_pageController.page!.toInt());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(right: 3.0),
                                width: 34.0,
                                height: 34.0,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3,
                                          spreadRadius: 0.0,
                                          color: widget.curent == index
                                              ? const Color.fromARGB(
                                                  255, 158, 162, 172)
                                              : Colors.transparent,
                                          offset: const Offset(0, 3))
                                    ],
                                    color: widget.curent == index
                                        ? AppColor.h_FFFFFF
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                                child: CircleAvatar(
                                  backgroundColor: product.colors?[index],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  //Size
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Size',
                        style: AppStyle.gr_14_400,
                      ),
                      const SizedBox(height: 11.0),
                      Row(
                        children: [
                          ...List.generate(
                            product.colors!.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.sizeCurent = index;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 8.0),
                                width: 33.0,
                                height: 33.0,
                                decoration: BoxDecoration(
                                    color: widget.sizeCurent == index
                                        ? AppColor.h_515151
                                        : AppColor.h_FAFAFA,
                                    shape: BoxShape.circle),
                                child: Text(
                                  product.sizes?[index].toUpperCase() ?? '',
                                  style: widget.sizeCurent == index
                                      ? AppStyle.w_12_500
                                      : AppStyle.gr_12_500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32.0)
                  .copyWith(bottom: 15.0),
              width: double.infinity,
              height: 1.0,
              color: AppColor.h_F3F3F6,
            ),
            ExpansionTile(
              onExpansionChanged: (value) {
                if (value) {
                  // Nếu ExpansionTile được mở rộng, tự động cuộn màn hình để hiển thị toàn bộ nội dung
                  scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: const Duration(
                        milliseconds: 500), // Thử tăng giá trị duration
                    curve: Curves.easeInOut, // Kiểu cuộn
                  );
                }
              },

              tilePadding: const EdgeInsets.symmetric(horizontal: 32.0),
              shape: const RoundedRectangleBorder(side: BorderSide.none),
              title: const Text(
                'Desctiption',
              ),
              // backgroundColor: Colors.greenAccent, //khi bấm vào mới đổi màu
              childrenPadding: const EdgeInsets.symmetric(vertical: 9.0),
              // collapsedBackgroundColor:AppColor.h_464447, // màu khi chưa bấm vào
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(product.description ?? ''),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
