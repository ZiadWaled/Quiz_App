import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType type;
  final TextEditingController controller;
  final Function(String?)? onSubmit;
  final Function()? suffixPressed;
  final String? Function(String?) validate;
  final String? text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;

  const CustomTextFormField({
    Key? key,
    required this.type,
    this.onSubmit,
    required this.validate,
    required this.text,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.suffixPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // height: MediaQuery.of(context).size.height *.5/6,
        child: TextFormField(
          keyboardType: type,
          onFieldSubmitted: onSubmit,
          controller: controller,
          obscureText: isPassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,

          decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            filled: true,
            fillColor: Colors.white,
            labelText: text,
            prefixIcon: prefixIcon != null
                ? Icon(
              prefixIcon,
              semanticLabel: 'Prefix Icon',
            )
                : null,
            suffixIcon: suffixIcon != null
                ? IconButton(
              onPressed: suffixPressed,
              icon: IconButton(
                icon: Icon(
                  suffixIcon,
                  semanticLabel: 'Suffix Icon',
                ), onPressed: suffixPressed,
              ),
            )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
          ),
          validator: validate,
        ),
      ),
    );
  }
}
