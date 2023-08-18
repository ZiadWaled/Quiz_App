import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/screens/result_screen.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_text_buttom.dart';

import '../../../../core/utils/app_router.dart';

class QuizScreen extends StatelessWidget {
     QuizScreen({super.key,});
    var score =0;
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('sport quiz')),
        leading:  const Center(
          child: Text('0/1',
          style: TextStyle(
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
            child:const Center(child: Text(
              '?ما المنتخب الي كسب كاس العالم 2022',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            ),

          ),
          CustomTextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
              );
            },
            text: 'تونس',
          ),
          CustomTextButton(
            onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
              );
            },
            text: 'مصر',

          ),
          CustomTextButton(
            onPressed: (){
              score =1;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
              );

            },
            text: 'الارجنتين',
          ),
          CustomTextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(score: score)),
              );
            },
            text: 'الجزائر',
          ),

        ],
      ),
    );
  }
}
