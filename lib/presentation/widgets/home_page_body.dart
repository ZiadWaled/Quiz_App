import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/core/utils/app_router.dart';

class MyHomePageBody extends StatelessWidget {
  const MyHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(

          alignment: Alignment.bottomCenter,
            children: [
              Container(
                height:MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Image.asset(

                  'assets/images/home.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kLoginScreen);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Start',
                          textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ),
              )
            ],

        ),
      ),
    );
  }
}





