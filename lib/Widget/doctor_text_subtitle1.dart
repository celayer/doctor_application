import 'package:flutter/material.dart';


class DoctorTextSubTitleOne extends StatelessWidget {
  const DoctorTextSubTitleOne({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,);
  }
}