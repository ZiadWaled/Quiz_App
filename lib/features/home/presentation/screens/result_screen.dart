import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/features/home/presentation/screens/quiz_screen.dart';

import '../../../../core/utils/app_router.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({super.key, required String message});
   static int score= 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: (){}, child: Text("زياد",
            style: TextStyle(
              fontSize: 50,
            ),)),
        Center(

            child: Text(' ${QuizScreen.message}score',
              style: TextStyle(
                fontSize: 50,
              ),

            ),


        ),

    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: GestureDetector(
        child: const Text('play again',style: TextStyle(
          fontSize: 50,
        ),),
        onTap: (){
        GoRouter.of(context).push(AppRouter.kCategoryScreen);

        },
        ),
      ),
    ),


        ],
      ),
    );
  }
}
