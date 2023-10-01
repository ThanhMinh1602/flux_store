// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flux_store/models/banner_model.dart';
import 'package:flux_store/models/category_model.dart';
import 'package:flux_store/models/new_collection_model.dart';
import 'package:flux_store/models/product_model.dart';
import 'package:flux_store/models/top_collection_model.dart';
import 'package:flux_store/pages/detail_page.dart';
import 'package:flux_store/pages/widgets/active_page.dart';
import 'package:flux_store/pages/widgets/home_title_showall_custom.dart';
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
  List<ProductModel> recommends = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products =
        listProduct.where((element) => element.categoryModel?.id == 0).toList();
    _recommended();
  }

  void _recommended() {
    recommends = List.from(products);
    recommends.sort((a, b) => a.view!.compareTo(b.view!));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 36.0),
      children: [
        _category(),
        const SizedBox(height: 30.0),
        _listBanner(),
        const SizedBox(height: 35.0),
        const TitleShowAllCustom(title: 'Feature Products'),
        const SizedBox(height: 20.0),
        _featureProduct(),
        const SizedBox(height: 20.0),
        CachedNetworkImage(
          imageUrl: newCollectionModel.image ?? '',
          height: 157.0,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 38.0),
        const TitleShowAllCustom(title: 'Recommended'),
        const SizedBox(height: 30.0),
        _recommendedProduct(),
        const SizedBox(height: 34.0),
        const TitleShowAllCustom(title: 'Top Collection'),
        const SizedBox(height: 33.0),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 32.0),
          height: 141.0,
          decoration: const BoxDecoration(
            color: AppColor.h_f8f8fa,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    listTopColections[0].title ?? '',
                    style: AppStyle.gr_12_300,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

//--------------method-----------------------------------//
  SizedBox _featureProduct() {
    return SizedBox(
      height: 227.0,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 32.0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  DetailPage(productModel: products[index]),
                ),
              );
            },
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
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20.0),
      ),
    );
  }

  Padding _category() {
    return Padding(
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
                            element.categoryModel?.id == listCategory[index].id)
                        .toList();
                    _recommended();
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
    );
  }

  Widget _listBanner() {
    return SizedBox(
      height: 168.0,
      child: PageView.builder(
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
                  child: ActivePage(widget: widget),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox _recommendedProduct() {
    return SizedBox(
      height: 66.0,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 32.0),
        scrollDirection: Axis.horizontal,
        itemCount: recommends.length,
        itemBuilder: (context, index) {
          return Container(
            width: 213.0,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.h_F9F9F9, width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    imageUrl: recommends[index].image ?? '',
                    width: 66.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 9.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0)
                      .copyWith(right: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recommends[index].name ?? '',
                          style: AppStyle.bl_12_500),
                      Text('\$ ${recommends[index].price}',
                          style: AppStyle.bl_16_700)
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 15.0),
      ),
    );
  }
}

