import 'package:code_competence/style/color.dart';
import 'package:code_competence/style/fontstyle.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  const PrimaryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: 180,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorStyle().primarypink //, Background color
            ),
        onPressed: () {},
        child: Text(
            textAlign: TextAlign.start,
            text,
            style: TextCustome().primary.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorStyle().white)),
      ),
    );
  }
}
