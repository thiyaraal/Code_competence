import 'package:code_competence/style/color.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hinText;
  const InputField({Key? key, required this.hinText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 272,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hinText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorStyle().grey))),
      ),
    );
  }
}
