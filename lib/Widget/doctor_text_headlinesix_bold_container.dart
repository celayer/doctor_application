import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';

class DoctorTitleHedlineSixContainer extends StatelessWidget {
  const DoctorTitleHedlineSixContainer({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold, color: DoctorConst.colorBlue),
      textAlign: TextAlign.center,
    );
  }
}
