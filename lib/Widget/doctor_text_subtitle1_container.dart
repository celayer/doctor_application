import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';


class DoctorTextSubTitleOneContainer extends StatelessWidget {
  const DoctorTextSubTitleOneContainer({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: DoctorConst.colorBlack,fontWeight: FontWeight.bold),textAlign: TextAlign.start,);
  }
}