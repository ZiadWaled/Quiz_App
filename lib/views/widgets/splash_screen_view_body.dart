import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/core/utils/app_router.dart';
import 'package:qizz_app/core/utils/size_config.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeTransition(
          opacity: fadingAnimation!,
          child: Center(
            child: Image.asset('assets/images/logo1.png'),
          ),
        ),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.kMyHomePageBody);

    });
  }
}
