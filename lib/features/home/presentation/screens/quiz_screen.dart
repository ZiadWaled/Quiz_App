import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/screens/result_screen.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_text_buttom.dart';

import '../../../../core/utils/app_router.dart';

class QuizScreen extends StatefulWidget {
    const QuizScreen({super.key,
   });
    static int score= 0 ;
    static String message = (QuizScreen.score == 1) ? 'Congratulations you 1/4!' : 'you 0/4';

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('sport')),
        leading:  Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text('${QuizScreen.score}/1',
          style: const TextStyle(
            fontSize: 20,
          )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/My project-1 (2).png'),
          ),
        ],
      ),
      body:Column(
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height*1/4,
            width: double.infinity,
            child:const Center(child: Text('?ما المنتخب الي كسب كاس العالم 2022')),

          ),
          CustomTextButton(
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(message: QuizScreen.message),
                    ));
              });
            },
            text: 'تونس',
          ),
          CustomTextButton(
            onPressed: (){

              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(message: QuizScreen.message),
                    ));
              });
            },
            text: 'مصر',

          ),
          CustomTextButton(
            onPressed: (){

              setState(() {
                QuizScreen.score=1;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(message: QuizScreen.message),
                    ));
              });

            },
            text: 'الارجنتين',
          ),
          CustomTextButton(
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(message: QuizScreen.message),
                    ));
              });
            },
            text: 'الجزائر',
          ),

        ],
      ),
    );
  }
}
