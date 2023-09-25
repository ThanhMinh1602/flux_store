import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flux_store/gen/assets.gen.dart';
import 'package:flux_store/pages/home_page.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});
  List<String> listIcon = [
    Assets.icons.icHome,
    Assets.icons.icSearch,
    Assets.icons.icCart,
    Assets.icons.icProfile,
  ];
  int curentPage = 0;
  PageController pageController = PageController();
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 26.0 + 28.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0)
              .copyWith(top: MediaQuery.of(context).padding.top + 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.icons.icAppbarMenu),
              const Text(
                'Gemstore',
                style: AppStyle.bl_20_700,
              ),
              const Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    size: 26,
                  ),
                  Positioned(
                    top: 4.0,
                    right: 4.0,
                    child: CircleAvatar(
                      radius: 4.5,
                      backgroundColor: AppColor.h_FFFFFF,
                      child: CircleAvatar(
                        radius: 3.5,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: widget.curentPage,
        children: [
          HomePage(),
          Container(
            color: Colors.white12,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blueGrey,
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        decoration: BoxDecoration(
          color: AppColor.h_FFFFFF,
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                color: AppColor.h_000000.withOpacity(0.15),
                spreadRadius: 0,
                offset: const Offset(0, 0))
          ],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              widget.listIcon.length,
              (index) => InkWell(
                onTap: () {
                  setState(() {
                    widget.curentPage = index;
                    print(widget.curentPage);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SvgPicture.asset(widget.listIcon[index],
                      color: widget.curentPage == index
                          ? AppColor.h_000000
                          : AppColor.h_D6D6D6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
