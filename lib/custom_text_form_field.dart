
import 'package:flutter/material.dart';

class  CustomTextFormField extends StatelessWidget {
  late final TextInputType type;
  late final TextEditingController controller ;
  late final Function(String?)? OnSubmit ;
  late final String? Function(String?)? validate ;
  late final  String? text ;

  CustomTextFormField({super.key,


    required this.type,
    this.OnSubmit,
    this.validate,
    required this.text}) {

  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(

        keyboardType: type,
        onFieldSubmitted: OnSubmit,
        decoration:  InputDecoration(

          labelText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        validator: validate
    );
  }
}
  // } Padding(
  //  padding: const EdgeInsets.all(20.0),
  //  child: SizedBox(
  //  width: MediaQuery.of(context).size.width/1.5,
  //  child: TextFormField(
  //  decoration: InputDecoration(
  //  labelText:text,
  //  border: OutlineInputBorder(
  //  borderRadius: BorderRadius.circular(50),
  //  ),
  //  prefix: const Icon(Icons.email_outlined),
  //  ),
  //  ),
  //  ),
  //  );

