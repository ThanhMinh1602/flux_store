import 'package:flutter/material.dart';

import 'package:flux_store/components/button/back_circle_button_custom.dart';

import 'package:flux_store/pages/verification_code_page.dart';
import 'package:flux_store/pages/widgets/login_textformfield_custom.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(
          top: MediaQuery.of(context).padding.top + 18.0,
        ),
        children: [
          BackCircleButtonCustom(
            onPressed: () {},
          ),
          const SizedBox(height: 34.0),
          const Text(
            'Forgot password?',
            style: AppStyle.bl_24_700,
          ),
          const SizedBox(height: 18.0),
          const Text(
            'Enter email associated with your account and we’ll send and'
            ' email with intructions to reset your password',
            style: AppStyle.bl_14_400,
          ),
          const SizedBox(height: 54.0),
          LoginTextFormFieldCustom(
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (p0) =>
                Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VerificationCode(),
            )),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 7.0, right: 19.61),
              child: Icon(
                Icons.email_outlined,
                color: AppColor.h_BFBFBF,
                size: 20,
              ),
            ),
            hintText: 'enter your email here',
          )
        ],
      ),
    );
  }
}
