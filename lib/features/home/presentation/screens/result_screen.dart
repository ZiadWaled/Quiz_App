import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/screens/home_page_view.dart';
import 'package:qizz_app/features/home/presentation/widgets/login_screen_body.dart';

class resultScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuistion;
  resultScreen(
      {Key? key, required this.totalScore, required this.totalNumOfQuistion})
      : super(key: key);

  @override
  State<resultScreen> createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {
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
                      "${LoginScreenBody.emailController.text}",
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
          TextButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(const Color.fromARGB(255, 130, 11, 84)),
            ),
            onPressed: () {
              Navigator.of(context).popUntil((r) => r.isFirst);
            },
            child: const Text("Reset quiz"),
          ),
        ],
      ),
    );
  }
}
