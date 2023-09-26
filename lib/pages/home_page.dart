import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/models/banner_model.dart';
import 'package:flux_store/models/category_model.dart';
import 'package:flux_store/models/product_model.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});
  List<IconData> listIcon = [
    Icons.male,
    Icons.female,
    Icons.account_balance_wallet_rounded,
    Icons.brush_rounded
  ];
  int current = 0;
  int currentPage = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  List<ProductModel> products = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products =
        listProduct.where((element) => element.categoryModel?.id == 0).toList();
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.current = index;
                        products = listProduct
                            .where((element) =>
                                element.categoryModel?.id ==
                                listCategory[index].id)
                            .toList();
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          padding: const EdgeInsets.all(3.0),
                          width: 42.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2,
                                color: widget.current == index
                                    ? AppColor.h_3A2C27
                                    : Colors.transparent),
                          ),
                          child: CircleAvatar(
                            backgroundColor: widget.current == index
                                ? AppColor.h_3A2C27
                                : AppColor.h_F3F3F3,
                            child: Icon(
                              widget.listIcon[index],
                              color: widget.current == index
                                  ? AppColor.h_FFFFFF
                                  : AppColor.h_9D9D9D,
                            ),
                          ),
                        ),
                        Text(listCategory[index].categoryName ?? '')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        SizedBox(
          height: 168.0,
          child: _listBanner(),
        ),
        const SizedBox(height: 35.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feature Products',
                style: AppStyle.bl_20_700,
              ),
              Text(
                'Show all',
                style: AppStyle.gr_13_400,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 227.0,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 32.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 126.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: CachedNetworkImage(
                        imageUrl: products[index].image ?? '',
                        height: 172.0,
                        width: 126.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 13.0),
                    Text(
                      products[index].name ?? '',
                      style: AppStyle.bl_12_500,
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      overflow: TextOverflow.clip,
                      '\$ ${products[index].price}',
                      style: AppStyle.bl_16_700,
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 20.0),
          ),
        ),
      ],
    );
  }

//--------------method-----------------------------------//
  PageView _listBanner() {
    return PageView.builder(
      controller: pageController,
      itemCount: listBannerModels.length,
      onPageChanged: (int page) {
        setState(() {
          widget.currentPage = page;
        });
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: CachedNetworkImage(
                  imageUrl: listBannerModels[index].image ?? '',
                  height: 168.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 19.0,
                right: 8.0,
                child: Text(
                  listBannerModels[index].title ?? '',
                  style: AppStyle.w_22_700,
                ),
              ),
              Positioned(
                bottom: 8.5,
                child: SizedBox(
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
                                color: widget.currentPage == index
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
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
