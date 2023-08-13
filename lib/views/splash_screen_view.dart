import 'package:flutter/material.dart';
import 'package:qizz_app/views/widgets/splash_screen_view_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
          SizedBox(
              height:MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.cover,
              )
          ),
            const SplashBody(),
        ],
      ) ,
    );
  }
}
