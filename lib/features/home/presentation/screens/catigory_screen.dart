import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/core/utils/app_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kQuizScreen);

            },
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height/3,
              child: const Center(child: Text('الاختبار الاول')),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            width: double.infinity,
            height: MediaQuery.of(context).size.height/3,
            child: const Center(child: Text('الاختبار الثاني')),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: MediaQuery.of(context).size.height/3,
            child: const Center(child: Text('الاختبار الثالث')),
          ),

        ],
      ),
    );
  }
}
