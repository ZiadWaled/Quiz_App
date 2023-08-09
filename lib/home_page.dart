import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/home.jpg',
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: GestureDetector(
                    onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Start',
                          textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              )
            ],

        ),
      ),
    );
  }
}





