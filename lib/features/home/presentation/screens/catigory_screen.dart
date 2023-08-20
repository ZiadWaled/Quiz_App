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
                title: Text("Exit App"),
                content: Text("Do you want to exit the app?"),
                actions: [
                  TextButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text("Yes"),
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