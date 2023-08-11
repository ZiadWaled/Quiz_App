import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({super.key});
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/4,
              width:double.infinity,
              child: Image.asset(
                  'assets/images/My project-1 (2).png',
                height: 100,
                width: 100,
              )
            ),
            Container(
              decoration:
              BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart:Radius.circular(50),
                    topEnd:Radius.circular(50),
                  ),
                color: Colors.grey[350],
              ),

              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [

                    SizedBox(
                      height: MediaQuery.of(context).size.height/15,

                      child: const Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/12,

                      child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(

                        prefixIcon: const Icon(FontAwesomeIcons.user),
                        labelText: 'Email Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),

                ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/12,
                      child: TextFormField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration:  InputDecoration(
                          prefixIcon: const Icon(FontAwesomeIcons.lock),
                          suffixIcon: const Icon(FontAwesomeIcons.eyeSlash),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),

                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/15,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("New to quizz app? ",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              )
                          ),


                          TextButton(onPressed: (){},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.green
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                   const SizedBox(
                     height: 10,
                   ),
                   SizedBox(
                     height: MediaQuery.of(context).size.height/18,
                     child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          elevation: 10,
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                        child: const Text(' Login'),
                      ),
                   ),
                     const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/6,

                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/touch.png',
                            width: 180, // العرض الذي تريده للصورة
                            height: 70, // الارتفاع الذي تريده للصورة
                            fit: BoxFit.cover, // كيفية توسيع أو تصغير الصورة داخل المساحة المحددة
                          ),

                          const Text(
                            'Use Touch ID',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/20,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: isChecked, onChanged: (bool? value) {  },

                          ),
                          const Text('Remember me',
                          ),
                          const Spacer(),
                          TextButton(onPressed: (){},
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                    color: Colors.green
                                ),
                              )
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),);
  }
}
