import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
import 'package:flutter_doctor_app/Widget/doctor_bottom_navigation_bar.dart';
import 'package:flutter_doctor_app/Widget/doctor_comman_elevated_card_button.dart';
import 'package:flutter_doctor_app/Widget/doctor_comman_elevated_card_button_zero.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1_container.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1_text_start.dart';

class DoctorAppointment extends StatefulWidget {
  const DoctorAppointment({super.key});

  @override
  State<DoctorAppointment> createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  final double _heightCard = 2.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _appointmentPage(context),
    );
  }

  SingleChildScrollView _appointmentPage(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: DoctorConst.paddingAll15,
        child: Column(
          children: [
            _rowRowtextColmn(context),
            DoctorConst.sizedBoxH50,
            _cardCardColumnRow(context),
            _cardCardColumnRoww(context),
            _cardCardColumnRow(context),
            _cardCardColumnRoww(context),
            _cardCardColumnRow(context),
            _cardCardColumnRoww(context),
          ],
        ),
      ),
    );
  }

  SizedBox _cardCardColumnRoww(BuildContext context) {
    final double _leftP = 10;
    final double _rightP = 10;
    final double _bottomP = 10;
    final double _evelation = 8;
    final double _evelationZero = 8;
    final double _topP = 10;
    final double _leftP5 = 5;
    final double _rightP5 = 5;

    return SizedBox(
      height: MediaQuery.of(context).size.height / _heightCard,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: DoctorConst.borderRadius20,
        ),
        elevation: _evelation,
        child: Padding(
          padding: EdgeInsets.only(
              left: _leftP, right: _rightP, top: _topP, bottom: _bottomP),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: _evelationZero,
              shape: RoundedRectangleBorder(
                borderRadius: DoctorConst.borderRadius20,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: _topP,
                    bottom: _bottomP,
                    left: _leftP5,
                    right: _rightP5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowImageContainer(context),
                    DoctorConst.sizedBoxH25,
                    _rowIconsTexts(context),
                    DoctorConst.sizedBoxH25,
                    _rowElevatedButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _cardCardColumnRow(BuildContext context) {
    final double _leftP = 10;
    final double _rightP = 10;
    final double _bottomP = 10;
    final double _evelation = 8;
    final double _evelationZero = 8;
    final double _topP = 10;
    final double _leftP5 = 5;
    final double _rightP5 = 5;

    return SizedBox(
      height: MediaQuery.of(context).size.height / _heightCard,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: DoctorConst.borderRadius20,
        ),
        elevation: _evelation,
        child: Padding(
          padding: EdgeInsets.only(
              left: _leftP, right: _rightP, top: _topP, bottom: _bottomP),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 11,
              shape: RoundedRectangleBorder(
                borderRadius: DoctorConst.borderRadius20,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: _topP,
                    bottom: _bottomP,
                    left: _leftP5,
                    right: _rightP5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowImageColumn(context),
                    DoctorConst.sizedBoxH25,
                    _rowIconsTexts(context),
                    DoctorConst.sizedBoxH25,
                    _rowElevatedButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _rowImageContainer(BuildContext context) {
    final double _height = 10;

    final double _width = 5;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 116, 183, 238),
          ),
          height: MediaQuery.of(context).size.height / _height,
          width: MediaQuery.of(context).size.width / _width,
          child: Image.asset(DoctorConst.imageDoctorinfo),
        ),
        DoctorConst.sizedBoxW10,
        _columnDrNameBranch(context)
      ],
    );
  }

  Row _rowElevatedButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DoctorCardElevatedButton(
          text: DoctorConst.doctorCardElevatedButtonName,
          onPressed: () {},
        ),
        doctorCardElevatedButtonNameZero(
          text: DoctorConst.doctorCardElevatedButtonNameZero,
          onPressed: () {},
        ),
      ],
    );
  }

  Row _rowIconsTexts(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month_outlined,
          size: 20,
          color: DoctorConst.colorBlue,
        ),
        Text(
          DoctorConst.doctorCardNate,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: DoctorConst.colorBlue),
        ),
        DoctorConst.sizedBoxW5,
        Icon(
          Icons.access_time_rounded,
          size: 20,
          color: DoctorConst.colorBlue,
        ),
        DoctorConst.sizedBoxW5,
        Text(
          DoctorConst.doctorCardTime,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: DoctorConst.colorBlue),
        ),
        DoctorConst.sizedBoxW5,
        Icon(
          Icons.circle,
          size: 20,
          color: DoctorConst.colorOrange,
        ),
        DoctorConst.sizedBoxW5,
        Text(
          DoctorConst.doctorCardComfirmed,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: DoctorConst.colorBlue),
        ),
      ],
    );
  }

  Row _rowImageColumn(BuildContext context) {
    final double _height = 10;

    final double _width = 5;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 116, 183, 238),
          ),
          height: MediaQuery.of(context).size.height / _height,
          width: MediaQuery.of(context).size.width / _width,
          child: Image.asset(DoctorConst.imageDoctorZeroinfo),
        ),
        DoctorConst.sizedBoxW10,
        _columnDrNameBranch(context)
      ],
    );
  }

  Column _columnDrNameBranch(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DoctorConst.doctorCardNameZero,
          style: Theme.of(context).textTheme.headline6,
        ),
        DoctorConst.sizedBoxH5,
        Text(
          DoctorConst.doctorCardNameBranchZero,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: DoctorConst.colorRed),
        ),
        DoctorConst.sizedBoxH5,
        _rowIconsText(context)
      ],
    );
  }

  Row _rowIconsText(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: DoctorConst.colorYellow,
        ),
        Icon(
          Icons.star,
          color: DoctorConst.colorYellow,
        ),
        Icon(
          Icons.star,
          color: DoctorConst.colorYellow,
        ),
        Icon(
          Icons.star,
          color: DoctorConst.colorYellow,
        ),
        Icon(
          Icons.star,
          color: DoctorConst.colorYellow,
        ),
        DoctorConst.sizedBoxW5,
        Text(
          DoctorConst.doctorCardPoint,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Row _rowRowtextColmn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _containerIcon(context),
            DoctorConst.sizedBoxW10,
            Text(
              DoctorConst.doctorCalendar,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold, color: DoctorConst.colorBlack),
            ),
            DoctorConst.sizedBoxW10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DoctorTextSubTitleOneStart(
                  text: DoctorConst.doctorCalendarDay,
                ),
                DoctorTextSubTitleOneContainer(
                    text: DoctorConst.doctorCalendarMonthYear),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(
              DoctorConst.doctorUpcoming,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorConst.colorBlue),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: DoctorConst.colorBlue,
            ),
          ],
        ),
      ],
    );
  }

  Container _containerIcon(BuildContext context) {
    final double _height = 20;

    final double _width = 10;

    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
          color: DoctorConst.colorWhite,
          border: Border.all(color: DoctorConst.colorBlue, width: 2),
          borderRadius: DoctorConst.borderRadius10),
      child: Icon(
        Icons.calendar_month_outlined,
        size: 30,
        color: DoctorConst.colorRed,
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => DoctorBottomNavigationBar()),
            ),
          );
        },
        icon: Icon(
          Icons.arrow_back,
          color: DoctorConst.colorBlue,
        ),
      ),
      title: Text(
        DoctorConst.doctorAppointmentAppbarTitle,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: DoctorConst.colorBlue),
      ),
      centerTitle: true,
      backgroundColor: DoctorConst.colorTransparent,
      elevation: 0,
    );
  }
}
