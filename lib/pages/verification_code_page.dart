import 'package:flutter/material.dart';
import 'package:flux_store/components/button/back_circle_button_custom.dart';
import 'package:flux_store/pages/create_new_password.dart';
import 'package:flux_store/resource/app_colors.dart';
import 'package:flux_store/resource/app_styles.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
            'Verification code',
            style: AppStyle.bl_24_700,
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Please enter the verification code we sent to your email address',
            style: AppStyle.bl_14_400,
          ),
          const SizedBox(height: 58.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCircleInput(),
              CustomCircleInput(),
              CustomCircleInput(),
              CustomCircleInput(),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCircleInput extends StatelessWidget {
  const CustomCircleInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.0,
      height: 58.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.h_A5A7AC,
        ),
      ),
      child: TextFormField(
        onFieldSubmitted: (value) =>
            Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CreateNewPassword(),
        )),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
