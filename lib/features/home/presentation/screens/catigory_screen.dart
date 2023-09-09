import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_category_countainer.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Exit App"),
                content: const Text("Do you want to exit the app?"),
                actions: [
                  TextButton(
                    child: const Text("No"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text("Yes"),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                ],
              );
            },
          );
          return false;
        },
        child: Scaffold(
          body: Column(
            children: [
              for (int i = 0; i < 6; i++)
                CategoryContainer(
                  index: i,
                )
            ],
          ),
        ));
  }
}