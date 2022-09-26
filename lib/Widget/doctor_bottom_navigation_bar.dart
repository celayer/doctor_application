import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
import 'package:flutter_doctor_app/View/doctor_appointment.dart';
import 'package:flutter_doctor_app/View/doctor_detail.dart';
import 'package:flutter_doctor_app/View/doctor_home.dart';
import 'package:flutter_doctor_app/View/doctor_info.dart';
import 'package:flutter_doctor_app/View/doctor_message.dart';

class DoctorBottomNavigationBar extends StatefulWidget {
  const DoctorBottomNavigationBar({super.key});

  @override
  State<DoctorBottomNavigationBar> createState() =>
      _DoctorBottomNavigationBarState();
}

class _DoctorBottomNavigationBarState extends State<DoctorBottomNavigationBar> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [
    DoctorHome(),
    DoctorMessage(),
    DoctorAppointment(),
    DoctorDetail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: DoctorConst.colorGrey,
        selectedItemColor: DoctorConst.colorBlue,
        currentIndex: _selectedIndex,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: ((int index) {
          setState(() {
            _selectedIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
