import 'package:flutter/material.dart';

class CustomRegister extends StatelessWidget {
  const CustomRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("New to quizz app? ",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            )
        ),


        TextButton(onPressed: (){},
            child: const Text(
              'Register',
              style: TextStyle(
                  color: Colors.green
              ),
            )
        )
      ],
    );
  }
}
