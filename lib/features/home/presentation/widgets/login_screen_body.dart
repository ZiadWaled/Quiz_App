// ignore_for_file: avoid_print

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qizz_app/core/utils/size_config.dart';
import 'package:qizz_app/features/home/presentation/widgets/costom_elevated_button.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_register.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_remember_me.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_text_form_field.dart';
import 'package:qizz_app/features/home/presentation/widgets/custom_touch_id.dart';
import 'package:qizz_app/model/cubit/cubit.dart';
import 'package:qizz_app/model/cubit/states.dart';

// ignore: must_be_immutable
class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  static var emailController = TextEditingController();
  static var passwordController = TextEditingController();
  static var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => ToggleCubit(), // Pass the required argument
      child: BlocConsumer< ToggleCubit,ToggleStates>(
  listener: (context, state) {},
  builder: (context, state) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Form(
          key:formKey ,
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height /2.83,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/My project-1 (2).png',
                  ),
              ),
              Container(
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
                        width: SizeConfig.screenWidth! / 1.3,
                        child: CustomTextFormField(
                            type: TextInputType.emailAddress,
                            text: 'User name',
                            controller: emailController,
                            prefixIcon: FontAwesomeIcons.userAlt,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return 'Username should be not empty';
                              }

                              if (value!.length < 8) {
                                return 'Username should be more than 8 characters';
                              }
                              if (value[0] != value[0].toUpperCase()) {
                                return 'Username should start with an uppercase letter';
                              }
                              if (!RegExp(r"@\w+\.com").hasMatch(value)) {
                                return 'You must enter a word containing "@.com"';
                              }
                              return null;
                            }
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! / 1.3,
                        child: CustomTextFormField(
                            type: TextInputType.visiblePassword,
                            text: 'Password',
                            isPassword:  ToggleCubit.get(context).isPassword,
                            controller: passwordController,
                            prefixIcon: FontAwesomeIcons.lock,
                            suffixIcon: ToggleCubit.get(context).isPassword? FontAwesomeIcons.eyeSlash:FontAwesomeIcons.eye,
                          suffixPressed: (){
                            ToggleCubit.get(context).ChangeIsPassword();
                          },

                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Password should be not empty';
                            }

                            if (value.length <= 9) {
                              return 'The text must contain more than 9 characters';
                            }

                            if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{9,}$').hasMatch(value)) {
                              return 'The text must contain an uppercase letter,\n a lowercase letter, a special character, and a number';
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
                        child: const CustomElevatedButton(),
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
  },
),
);
  }
}
