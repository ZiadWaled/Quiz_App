import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height/3,
            child: const Center(child: Text('الاختبار الاول')),
          ),
          Container(
            color: Colors.blueAccent,
            width: double.infinity,
            height: MediaQuery.of(context).size.height/3,
            child: const Center(child: Text('الاختبار الثاني')),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: MediaQuery.of(context).size.height/3,
            child: const Center(child: Text('الاختبار الثالث')),
          ),

        ],
      ),
    );
  }
}
