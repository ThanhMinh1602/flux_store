import 'package:flutter/material.dart';
import 'package:flux_store/pages/intro_page.dart';
import 'package:flux_store/components/button/outline_button_custom.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_images_network.dart';
import 'package:flux_store/resource/app_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.network(
              AppImagesNetwork.bgrWelcome,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: AppColor.h_000000.withOpacity(0.5),
          ),
          Positioned(
            bottom: 100.0,
            left: 55.0,
            right: 55.0,
            child: Column(
              children: [
                const Text(
                  'Welcome to GemStore!',
                  style: AppStyle.w_25_700,
                ),
                const SizedBox(height: 13.0),
                const Text(
                  ' The home for a fashionista',
                  style: AppStyle.w_16_700,
                ),
                const SizedBox(height: 60.0),
                OutlineCustomButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => IntroPage(),
                    ));
                  },
                  label: 'Get Started',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
