import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note/const/app_colors.dart';
import 'package:note/const/fonts_manager.dart';
import 'package:note/core/locale_keys.dart';

import '../../core/validate.dart';
import '../../gen/assets.gen.dart';
import '../../widget/auth_textfield.dart';
import '../../widget/rectangle_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController pwdCtrl = TextEditingController();
  TextEditingController fullNameCtrl = TextEditingController();
  TextEditingController confirmPwdCtrl = TextEditingController();
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
                  height: 64.h,
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
                    if(fullNameCtrl.text == '') {
                      return LocaleKeys.cantBlank.tr();
                    }

                    return null;
                  },
                  controller: fullNameCtrl,
                  hintText: LocaleKeys.fullname.tr(),
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
                AuthTextField(
                  validator: () {
                    if(confirmPwdCtrl.text != pwdCtrl.text) {
                      return LocaleKeys.pwdDontMatch.tr();
                    }

                    return Validate.passwordValidate(pwdCtrl.text);
                  },
                  controller: confirmPwdCtrl,
                  hintText: LocaleKeys.confirmPassword.tr(),
                  isPwd: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                RectangleButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ///Todo: sign up
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
