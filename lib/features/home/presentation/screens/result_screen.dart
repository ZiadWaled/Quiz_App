import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/widgets/login_screen_body.dart';

class ResultScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuistion;
  const ResultScreen(
      {Key? key, required this.totalScore, required this.totalNumOfQuistion})
      : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void dispose() {
    LoginScreenBody.emailController.dispose();
    LoginScreenBody.passwordController.dispose();
    LoginScreenBody.emailController=TextEditingController();
    LoginScreenBody.passwordController=TextEditingController();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Hello , ",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Dancing Script")),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LoginScreenBody.emailController.text,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              Text(
                "Your Score is ${widget.totalScore}/${widget.totalNumOfQuistion}",
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script"),
              ),
            ],
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut, // إضافة منحنى التكيف للانتقال
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).popUntil((r) => r.isFirst);
              },
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    "Play again",
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),

                  ),
                ],
                totalRepeatCount: 30,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
