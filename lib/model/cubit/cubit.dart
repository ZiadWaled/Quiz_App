// ignore_for_file: non_constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qizz_app/model/cubit/states.dart';

class ToggleCubit extends Cubit<ToggleStates>
{
  // ignore: avoid_types_as_parameter_names
  ToggleCubit(): super(InitialState());
  bool isPassword = true;

  static ToggleCubit get(context) =>BlocProvider.of(context);
   void ChangeIsPassword(){

     isPassword=!isPassword;
     emit(ChangeState());
   }
}