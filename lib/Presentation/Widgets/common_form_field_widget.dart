import 'package:doc_appointment/gen/colors.gen.dart';
import 'package:doc_appointment/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class CommonFormFieldWidget extends StatelessWidget {
  final String labelText;
  const CommonFormFieldWidget({
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        shadows: [
          BoxShadow(
            offset: Offset(-5, -5),
            color: ColorName.white,
            blurRadius: 10,
          ),
          BoxShadow(
            offset: Offset(5, 5),
            color: ColorName.shadow,
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: ColorName.text,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            fontFamily: FontFamily.poppins,
          ),
        ),
      ),
    );
  }
}
