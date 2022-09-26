import 'package:flutter/material.dart';


class DoctorTitleHedlineFive extends StatelessWidget {
  const DoctorTitleHedlineFive({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),textAlign: TextAlign.center,);
  }
}