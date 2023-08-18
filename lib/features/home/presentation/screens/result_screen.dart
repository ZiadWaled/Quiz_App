import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/features/home/presentation/screens/home_page_view.dart';
import 'package:qizz_app/features/home/presentation/screens/quiz_screen.dart';

import '../../../../core/utils/app_router.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          TextButton(
              onPressed: () {},
              child: const Text(
                "Ziad",
                style: TextStyle(
                  fontSize: 50,
                ),
              )),
           Center(
            child: Text(
              'Congratulation you scored  $score/1',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: GestureDetector(
                child: const Text(
                  'play again',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeView()),
                        (Route<dynamic> route) => false, // Remove all previous routes
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
