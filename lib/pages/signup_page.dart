import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flux_store/components/button/elevated_button_custom.dart';
import 'package:flux_store/gen/assets.gen.dart';
import 'package:flux_store/pages/widgets/login_richtext_custom.dart';
import 'package:flux_store/pages/widgets/login_textformfield_custom.dart';
import 'package:flux_store/resource/app_styles.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(
          top: MediaQuery.of(context).padding.top + 58,
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        // ignore: prefer_const_constructors
        children: [
          Text(
            'Create\nyour account',
            style: AppStyle.bl_24_700.copyWith(
              height: 2.3,
            ),
          ),
          const SizedBox(height: 19.0),
          const LoginTextFormFieldCustom(
            hintText: 'Enter your name',
          ),
          const SizedBox(height: 20.0),
          const LoginTextFormFieldCustom(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email address',
          ),
          const SizedBox(height: 20.0),
          const LoginTextFormFieldCustom(
            obscureText: true,
            hintText: 'Password',
          ),
          const SizedBox(height: 20.0),
          const LoginTextFormFieldCustom(
            obscureText: true,
            hintText: 'Confirm password',
          ),
          const SizedBox(height: 44.0),
          Center(
            child: ElevatedButtonCustom(
              label: 'sign up',
              onTap: () {},
            ),
          ),
          const SizedBox(height: 28.0),
          Text(
            textAlign: TextAlign.center,
            'or sign up with',
            style: AppStyle.bl_14_400.copyWith(fontSize: 12.0),
          ),
          const SizedBox(height: 28.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.icons.icApple,
              ),
              const SizedBox(width: 20.0),
              SvgPicture.asset(
                Assets.icons.icGoogle,
              ),
              const SizedBox(width: 20.0),
              SvgPicture.asset(
                Assets.icons.icFb,
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          LoginRichTextCustom(
            labe1: 'Already have account?',
            labe2: 'Log In',
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
