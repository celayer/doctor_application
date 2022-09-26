import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';

class DoctorTextSubTitleOneGradient extends StatelessWidget {
  DoctorTextSubTitleOneGradient({super.key, required this.text});
  final text;
  final LinearGradient _gradient = LinearGradient(
    colors: <Color>[DoctorConst.colorRed, DoctorConst.colorBlue],
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return _gradient.createShader(rect);
      },
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: DoctorConst.colorWhite),
        textAlign: TextAlign.start,
      ),
    );
  }
}
