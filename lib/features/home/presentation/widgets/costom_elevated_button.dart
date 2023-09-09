// ignore_for_file: avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:qizz_app/core/utils/app_router.dart';
import 'package:qizz_app/features/home/presentation/screens/catigory_screen.dart';
import 'package:qizz_app/features/home/presentation/widgets/login_screen_body.dart';
class CustomElevatedButton extends StatelessWidget {
   const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        if (LoginScreenBody.formKey.currentState!.validate()) {
          print('Username is valid: ${LoginScreenBody.emailController.text}');
          print('Password is valid: ${LoginScreenBody.passwordController.text}');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryScreen()),
          );
        }

      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 10,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      child: const Text(' Login'),
    );
  }
}
