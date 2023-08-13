import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/widgets/login_screen_body.dart';


class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoginScreenBody(),
    );
  }
}
