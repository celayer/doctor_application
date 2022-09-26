import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';


class DoctorTextSubTitleOneStart extends StatelessWidget {
  const DoctorTextSubTitleOneStart({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Color.fromARGB(255, 199, 199, 199)),textAlign: TextAlign.start,);
  }
}