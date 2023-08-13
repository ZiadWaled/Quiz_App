// ignore_for_file: avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qizz_app/core/utils/app_router.dart';
class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton({super.key});
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        if (formKey.currentState?.validate() ?? false) {
          print(emailController.text);
          print(passwordController.text);
        }
        GoRouter.of(context).push(AppRouter.kCategoryScreen);

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
