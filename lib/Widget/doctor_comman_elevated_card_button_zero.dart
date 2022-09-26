import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';


class doctorCardElevatedButtonNameZero extends StatelessWidget {
  const doctorCardElevatedButtonNameZero(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 19,
      width: MediaQuery.of(context).size.width / 2.8,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(backgroundColor:DoctorConst.colorBlue),
      ),
    );
  }
}
