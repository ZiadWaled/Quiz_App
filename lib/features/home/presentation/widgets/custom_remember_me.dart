import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRememberMe extends StatelessWidget {
  CustomRememberMe({super.key});
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: Colors.green,
          checkColor: Colors.white,
          value: isChecked, onChanged: (bool? value) {  },

        ),
        const Text('Remember me',
          style: TextStyle(
              fontSize: 14
          ),
        ),
        const Spacer(),
        TextButton(onPressed: (){},
            child: const Text(
              'Forget Password?',
              style: TextStyle(
                  color: Colors.green,
                fontSize: 14
              ),
            )
        ),
      ],
    );
  }
}
