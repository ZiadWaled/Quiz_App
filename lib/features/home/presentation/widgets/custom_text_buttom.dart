import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomTextButton({
    super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed ,
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Background color
        onPrimary: Colors.white, // Text color
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}