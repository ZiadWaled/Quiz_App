import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/widgets/home_page_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyHomePageBody(),
    );
  }
}
