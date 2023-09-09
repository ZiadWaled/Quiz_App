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
                      style: const TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Your Score is ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Dancing Script",
                      ),
                    ),
                    TextSpan(
                      text: "${widget.totalScore}",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 26,
                      ),
                    ),
                    TextSpan(
                      text: "/${widget.totalNumOfQuistion}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),


                  ],
                ),
              )

            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).popUntil((r) => r.isFirst);
            },
            child:

                Container(
                  height: MediaQuery.of(context).size.height/11,
                  width: MediaQuery.of(context).size.width/2.2,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(30)
                   ),
                  child: const Center(
                    child: Text(
                      "Play again",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
            ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
