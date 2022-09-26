import 'package:flutter/material.dart';


class DoctorCardElevatedButton extends StatelessWidget {
  const DoctorCardElevatedButton(
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
        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 191, 223, 192)),
      ),
    );
  }
}
