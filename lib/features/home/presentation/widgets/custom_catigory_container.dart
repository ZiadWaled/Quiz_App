import 'package:flutter/material.dart';

class CustomCategoryScreen extends StatelessWidget {
  final String? text;
   CustomCategoryScreen({
    super.key,
     this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height/3,
      child: const Center(
          child: Text('الاختبار الاول '),
      ),
    );
  }
}
