import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/const/app_colors.dart';
import 'package:note/const/fonts_manager.dart';
import 'package:note/core/locale_keys.dart';
import 'package:note/route/app_routing.dart';

import '../../core/validate.dart';
import '../../gen/assets.gen.dart';
import '../../widget/auth_textfield.dart';
import '../../widget/rectangle_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController pwdCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130.h,
                ),
                SizedBox(
                  height: 180.h,
                  width: 187.w,
                  child: Assets.images.appLogo.svg(),
                ),
                SizedBox(
                  height: 150.h,
                ),
                AuthTextField(
                  validator: () {
                    return Validate.emailValidate(emailCtrl.text);
                  },
                  controller: emailCtrl,
                  hintText: LocaleKeys.email.tr(),
                ),
                SizedBox(
                  height: 16.h,
                ),
                AuthTextField(
                  validator: () {
                    return Validate.passwordValidate(pwdCtrl.text);
                  },
                  controller: pwdCtrl,
                  hintText: LocaleKeys.password.tr(),
                  isPwd: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {

                    },
                    child: Text(
                      LocaleKeys.forgotPwd.tr(),
                      style: TextStyleManager.small.copyWith(
                        color: AppColors.black27text,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                RectangleButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ///Todo: login
                    }
                  },
                  buttonColor: AppColors.primePink,
                  title: LocaleKeys.signIn.tr(),
                ),
                SizedBox(
                  height: 16.h,
                ),
                RichText(
                  text: TextSpan(
                    text: LocaleKeys.dontHaveAcc.tr(),
                    style: TextStyleManager.small,
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: LocaleKeys.signUp.tr(),
                        style: TextStyleManager.small.copyWith(
                          color: AppColors.primePink,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          context.router.push(const SignUpRoute());
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
