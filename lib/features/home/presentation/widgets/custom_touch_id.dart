import 'package:flutter/material.dart';

class CustomTouchId extends StatelessWidget {
  const CustomTouchId({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/touch.png',
          width: 180,
          height: 70,
          fit: BoxFit.cover,
        ),

        const Text(
          'Use Touch ID',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
