import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flux_store/components/button/elevated_button_custom.dart';
import 'package:flux_store/gen/assets.gen.dart';
import 'package:flux_store/pages/forgot_password.dart';
import 'package:flux_store/pages/main_page.dart';
import 'package:flux_store/pages/signup_page.dart';
import 'package:flux_store/pages/widgets/login_richtext_custom.dart';
import 'package:flux_store/pages/widgets/login_textformfield_custom.dart';
import 'package:flux_store/resource/app_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            'Log into\nyour account',
            style: AppStyle.bl_24_700.copyWith(
              height: 2.3,
            ),
          ),
          const SizedBox(height: 48.0),
          const LoginTextFormFieldCustom(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email address',
          ),
          const SizedBox(height: 20.0),
          const LoginTextFormFieldCustom(
            obscureText: true,
            hintText: 'Password',
          ),
          const SizedBox(height: 28.0),
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ForgetPassword(),
                ));
              },
              child: Text('Forgot Password?',
                  style: AppStyle.bl_14_400.copyWith(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.end),
            ),
          ),
          const SizedBox(height: 35.0),
          Center(
            child: ElevatedButtonCustom(
              label: 'log in',
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                    (route) => false);
              },
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            textAlign: TextAlign.center,
            'or log in with',
            style: AppStyle.bl_14_400.copyWith(fontSize: 12.0),
          ),
          const SizedBox(height: 23.0),
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
          const SizedBox(height: 119.0),
          LoginRichTextCustom(
            labe1: 'Don’t have an account?',
            labe2: 'Sign Up',
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SignUpPage(),
            )),
          )
        ],
      ),
    );
  }
}
