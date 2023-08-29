import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/const/app_colors.dart';
import 'package:note/pages/splash/splash_cubit.dart';
import 'package:note/route/app_routing.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashCubit _splashCubit;
  @override
  void initState() {
    _splashCubit = SplashCubit();
    _splashCubit.autoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _splashCubit,
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (!state.loading) {
            context.router.push(const LoginRoute());
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.primePink.withOpacity(1),
          body: Center(
            child: Container(
              height: 200.h,
              width: 200.w,
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.r),
              ),
              child: Assets.images.appLogo.svg(
                height: 170.h,
                width: 170.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
