import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.child});
  final double _height=4;
  final double _width=2.5;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: DoctorConst.borderRadius20,
        ),
        color: Color.fromARGB(255, 131, 192, 243),
        child:child,
      ),
    );
  }
}
