import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["Color"],
        automaticallyImplyLeading: false,
        leading: Center(
          child: Text(
              "${index + 1}/ ${(widget.categoryMap["data"] as List).length}"),
        ),
        centerTitle: true,
        title: Text(widget.categoryMap["categoryName"]),
        actions: [
          Image.asset(
              "assets/images/My project-1 (2).png"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          widget.categoryMap["data"][index]["question"],
                          style: const TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              for (int i = 0;
              i <
                  (widget.categoryMap["data"][index]["answer"] as List)
                      .length;
              i++)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            widget.categoryMap["Color"]),
                      ),
                      onPressed: () {
                        totalScore = totalScore +
                            widget.categoryMap["data"][index]["answer"][i]
                            ["Score"] as int;
                        if (index + 1 <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ResultScreen(
                                totalScore: totalScore,
                                totalNumOfQuistion:  index + 1,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        widget.categoryMap["data"][index]["answer"][i]["ans"],
                        style: TextStyle(color: Colors.black),
                      )),
                ),
            ],
          ),
        ),
      ),
    );
  }
}