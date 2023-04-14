import 'package:code_competence/style/color.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  TextEditingController? controler;
  final String hinText;
  // String Function(String?)? validator;
  InputField({
    Key? key,
    required this.hinText,
    required this.controler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 272,
      child: TextFormField(
        controller: controler,
        decoration: InputDecoration(
            hintText: hinText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorStyle().grey))),
      ),
    );
  }
}
