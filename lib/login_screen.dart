import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:qizz_app/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
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
              height: MediaQuery.of(context).size.height/2.8,
              width:double.infinity,
              child: Image.asset('assets/images/images.jpg')
            ),
            Container(
              decoration:
              BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart:Radius.circular(50),
                    topEnd:Radius.circular(50),
                  ),
                color: Colors.grey[200],
              ),

              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [

                    const Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(

                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.user),
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),

                ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(

                      keyboardType: TextInputType.visiblePassword,
                      decoration:  InputDecoration(
                        prefixIcon: const Icon(FontAwesomeIcons.lock),
                        suffixIcon: const Icon(FontAwesomeIcons.eyeSlash),
                        labelText: 'Email Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
                   const SizedBox(
                     height: 10,
                   ),
                   ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 10, // تعيين الـ elevation إلى 20 هنا
                        primary: Colors.green, // لون الخلفية
                        onPrimary: Colors.white, // لون النص
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      child: Text(' Login'),
                    ),
                     const SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      'assets/images/download.png',
                      width: 70, // العرض الذي تريده للصورة
                      height: 70, // الارتفاع الذي تريده للصورة
                      fit: BoxFit.cover, // كيفية توسيع أو تصغير الصورة داخل المساحة المحددة
                    ),
                    const SizedBox(
                      height: 10,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          value: isChecked, onChanged: (bool? value) {  },

                        ),
                        const Text('Remember me',
                        ),
                        Spacer(),
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

                  ],
                ),
              ),
            )
          ],
        ),
      ),);
  }
}
