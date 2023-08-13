// ignore_for_file: avoid_print

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:qizz_app/core/utils/size_config.dart';
import 'package:qizz_app/features/home/presentation/widgets/costom_elevated_button.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_register.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_remember_me.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_text_form_field.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_touch_id.dart';

// ignore: must_be_immutable
class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height *1/ 3,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/My project-1 (2).png',
                  )),
              Container(
                height: MediaQuery.of(context).size.height *  2 / 3,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(50),
                    topEnd: Radius.circular(50),
                  ),
                  color: Colors.grey[200],
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.5/6,
                        child: const Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.5/6,
                        width: SizeConfig.screenWidth! / 1.3,
                        child: CustomTextFormField(
                            type: TextInputType.emailAddress,
                            text: 'User name',
                            controller: emailController,
                            prefixIcon: FontAwesomeIcons.userAlt,

                          validate: (value) {
                            if(value!.isEmpty){
                              return 'you must ';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.5/6,
                        width: SizeConfig.screenWidth! / 1.3,
                        child: CustomTextFormField(
                            type: TextInputType.visiblePassword,
                            text: 'Password',
                            isPassword: isPassword,
                            controller: passwordController,
                            prefixIcon: FontAwesomeIcons.lock,
                            suffixIcon: FontAwesomeIcons.eyeSlash,
                          validate: (value) {
                              if(value!.isEmpty){
                                return 'you must ';
                              }
                              return null;
                          },

                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.25/6,
                        child: const CustomRegister(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.350/6,
                        child: CustomElevatedButton(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.75/6,
                        child: const CustomTouchId(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height *.25/6,
                        child: CustomRememberMe(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
