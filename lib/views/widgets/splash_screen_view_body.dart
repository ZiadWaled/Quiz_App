import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qizz_app/core/utils/app_router.dart';
import 'package:qizz_app/core/utils/size_config.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;
  late Animation<Offset> slideLogoAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);

    slideLogoAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.bounceInOut));

    goToNextView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: fadingAnimation,
            child: Center(
              child: Image.asset('assets/images/logo1.png'),
            ),
          ),
          SlideTransition(
            position: slideLogoAnimation,
            child:  Column(
              children: [
                Text(
                  "ITI Quiz App",
                  style:
                  GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
                ),

                const SizedBox(
                  height: 20,
                ),

                Text(
                  "We are creative, enjoy our app",
                  style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 6), () {
      GoRouter.of(context).pushReplacement(AppRouter.kMyHomePageBody);
    });
  }
}