import 'package:flutter/material.dart';
import 'package:flux_store/components/button/outline_button_custom.dart';
import 'package:flux_store/models/intro_model.dart';
import 'package:flux_store/pages/login_page.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class IntroPage extends StatefulWidget {
  IntroPage({super.key});
  int currentPage = 0;
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.h_FFFFFF,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 90.0,
            left: 52.0,
            right: 52.0,
            child: Column(
              children: [
                Text(
                  listIntrol[widget.currentPage].title ?? '',
                  style: AppStyle.bl_20_700,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                Text(
                  listIntrol[widget.currentPage].subTitle ?? '',
                  style: AppStyle.bl_14_400,
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * (461 / 812),
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: const BoxDecoration(color: AppColor.h_464447),
            ),
          ),
          Positioned(
            bottom: 110,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: listIntrol.length,
                  effect: const WormEffect(
                      dotHeight: 6.0,
                      dotWidth: 6.0,
                      activeDotColor: AppColor.h_FFFFFF,
                      spacing: 8.0),
                ),
                const SizedBox(
                  height: 27.0,
                ),
                OutlineCustomButton(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                        (route) => false);
                  },
                  label: 'Shopping now',
                ),
              ],
            ),
          ),
          Positioned(
            top: 192.0,
            left: 0.0,
            right: 0.0,
            bottom: 253.0,
            child: PageView.custom(
              onPageChanged: (int page) {
                setState(() {
                  widget.currentPage = page;
                });
              },
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: listIntrol.length,
                (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 19.0),
                    margin: const EdgeInsets.symmetric(horizontal: 57.0),
                    decoration: BoxDecoration(
                      color: AppColor.h_E7E8E9,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.network(listIntrol[index].image ?? ''),
                  );
                },
              ),
              controller: pageController,
            ),
          )
        ],
      ),
    );
  }
}
