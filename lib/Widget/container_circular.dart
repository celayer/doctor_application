import 'package:flutter/material.dart';

class ContainerCircular extends StatelessWidget {
  const ContainerCircular({super.key, required this.widget});
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
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 3,
      child: widget,
    );
  }
}
