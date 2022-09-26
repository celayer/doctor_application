import 'package:flutter/material.dart';

class ContainerCircularZero extends StatelessWidget {
  const ContainerCircularZero({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 223, 211),
            Color.fromARGB(255, 137, 223, 181),
          ],
        ),
      ),
      height: MediaQuery.of(context).size.height / 9,
      width: MediaQuery.of(context).size.width / 4.5,
      child: widget,
    );
  }
}
