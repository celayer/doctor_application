import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
import 'package:flutter_doctor_app/View/doctor_info.dart';
import 'package:flutter_doctor_app/Widget/doctor_home_card_profile.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_headlinesix_bold.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1_container.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1_text_gradient.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1_text_start.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({super.key});

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  final double _containerIconHeight = 14;
  final double _containerIconWidth = 7;
  final double _containerHeight = 5;

  @override
  Widget build(BuildContext context) {
    final double _topP = 25;
    final double _leftP = 25;
    final double _rightP = 25;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 229, 250),
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.only(top: _topP, left: _leftP, right: _rightP),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorConst.sizedBoxH10,
              _rowExpandedTextfieldButton(context),
              DoctorConst.sizedBoxH50,
              _containerRowColumnTextButton(context),
              DoctorConst.sizedBoxH35,
              _rowContainerIcons(context),
              DoctorConst.sizedBoxH10,
              _rowContainerText(),
              DoctorConst.sizedBoxH20,
              DoctorTextSubTitleOneGradient(text: DoctorConst.doctorTopRated),
              DoctorConst.sizedBoxH20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _rowDoctorProfileCard(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _rowDoctorProfileCard(BuildContext context) {
    return Row(
      children: [
        _cardStackContainerPositioned(context),
        _cardStackImagePositionedContainerOne(context),
        _cardStackContainerPositioned(context),
        _cardStackImagePositionedContainerOne(context),
        _cardStackContainerPositioned(context),
        _cardStackImagePositionedContainerOne(context),
        _cardStackContainerPositioned(context),
        _cardStackImagePositionedContainerOne(context),
      ],
    );
  }

  DoctorCard _cardStackContainerPositioned(BuildContext context) {
    final double _bottomPosi = 0;

    final double _height = 9;

    final double _topP = 25;
    final double _leftP = 10;

    final double _fontsize = 17;

    return DoctorCard(
      child: Stack(
        children: [
          Image.asset(
            DoctorConst.imageDoctorinfo,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: _bottomPosi,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: DoctorConst.radius25,
                  topRight: DoctorConst.radius25,
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white,
                    Colors.transparent
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: _leftP, top: _topP),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DoctorConst.doctorCardName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: _fontsize, fontWeight: FontWeight.bold),
                    ),
                    DoctorConst.sizedBoxH10,
                    Text(
                      DoctorConst.doctorCardNameBranch,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: DoctorConst.colorYellow),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _positionedRowIconbutton(),
        ],
      ),
    );
  }

  DoctorCard _cardStackImagePositionedContainerOne(BuildContext context) {
    final double _topP = 25;
    final double _leftP = 10;
    final double _height = 9;
    final double _fontsize = 17;
    final double _bottomPosi = 0;

    return DoctorCard(
      child: Stack(
        children: [
          Image.asset(
            DoctorConst.imageDoctorZeroinfo,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: _bottomPosi,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: DoctorConst.radius25,
                  topRight: DoctorConst.radius25,
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white,
                    Colors.transparent
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: _leftP, top: _topP),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DoctorConst.doctorCardNameZero,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: _fontsize, fontWeight: FontWeight.bold),
                    ),
                    DoctorConst.sizedBoxH10,
                    Text(
                      DoctorConst.doctorCardNameBranchZero,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: DoctorConst.colorYellow),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _positionedRowIconbutton(),
        ],
      ),
    );
  }

  Positioned _positionedRowIconbutton() {
    return Positioned(
      left: 20,
      top: 80,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: DoctorConst.colorWhite,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_outlined,
                  color: DoctorConst.colorBlue,
                )),
          ),
          DoctorConst.sizedBoxW30,
          CircleAvatar(
            backgroundColor: DoctorConst.colorWhite,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: DoctorConst.colorRed,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _rowContainerText() {
    return Row(
      children: [
        DoctorTextSubTitleOneContainer(text: DoctorConst.doctorIconsTextDoctor),
        DoctorConst.sizedBoxW50,
        DoctorTextSubTitleOneContainer(text: DoctorConst.doctorIconsTextLab),
        DoctorConst.sizedBoxW35,
        DoctorTextSubTitleOneContainer(
            text: DoctorConst.doctorIconsTextAmbulance),
        DoctorConst.sizedBoxW25,
        DoctorTextSubTitleOneContainer(text: DoctorConst.doctorIconsTextPharms),
      ],
    );
  }

  Row _rowContainerIcons(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / _containerIconHeight,
          width: MediaQuery.of(context).size.width / _containerIconWidth,
          decoration: BoxDecoration(
              color: DoctorConst.colorBlue,
              borderRadius: DoctorConst.borderRadius10),
          child: Icon(
            Icons.local_hospital_outlined,
            size: 35,
            color: DoctorConst.colorWhite,
          ),
        ),
        DoctorConst.sizedBoxW35,
        Container(
          height: MediaQuery.of(context).size.height / _containerIconHeight,
          width: MediaQuery.of(context).size.width / _containerIconWidth,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 199, 199),
              borderRadius: DoctorConst.borderRadius10),
          child: Icon(
            Icons.science_outlined,
            size: 35,
            color: DoctorConst.colorWhite,
          ),
        ),
        DoctorConst.sizedBoxW35,
        Container(
          height: MediaQuery.of(context).size.height / _containerIconHeight,
          width: MediaQuery.of(context).size.width / _containerIconWidth,
          decoration: BoxDecoration(
              color: DoctorConst.colorRed,
              borderRadius: DoctorConst.borderRadius10),
          child: Icon(
            Icons.local_shipping_outlined,
            size: 35,
            color: DoctorConst.colorWhite,
          ),
        ),
        DoctorConst.sizedBoxW35,
        Container(
          height: MediaQuery.of(context).size.height / _containerIconHeight,
          width: MediaQuery.of(context).size.width / _containerIconWidth,
          decoration: BoxDecoration(
              color: DoctorConst.colorGrey,
              borderRadius: DoctorConst.borderRadius10),
          child: Icon(
            Icons.medical_services_outlined,
            size: 35,
            color: DoctorConst.colorWhite,
          ),
        ),
      ],
    );
  }

  Container _containerRowColumnTextButton(BuildContext context) {
    final double _topPosi = 15;
    final double _leftPosi = 15;
    final double _bottomPosi = 15;

    return Container(
      height: MediaQuery.of(context).size.height / _containerHeight,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius20,
        gradient: LinearGradient(
          colors: [DoctorConst.colorBlue, DoctorConst.colorGrey],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: _topPosi, left: _leftPosi, bottom: _bottomPosi),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DoctorTitleHedlineSix(
                    text: DoctorConst.doctorHomeContainerTitle),
                DoctorConst.sizedBoxH10,
                DoctorTextSubTitleOneStart(
                    text: DoctorConst.doctorHomeContainerText),
                DoctorConst.sizedBoxH5,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: DoctorConst.borderRadius10),
                  ),
                  onPressed: () {},
                  child:
                      Text(DoctorConst.doctorHomeContainerElevatedButtonText),
                ),
              ],
            ),
            Image.asset(
              DoctorConst.imageDoctorHome,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Row _rowExpandedTextfieldButton(BuildContext context) {
    final int _flexExp = 8;

    return Row(
      children: [
        Expanded(
          flex: _flexExp,
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: DoctorConst.borderRadius10),
              prefixIcon: Icon(Icons.search),
              hintText: DoctorConst.doctorHomeTextfieldHintText,
            ),
          ),
        ),
        DoctorConst.sizedBoxW10,
        Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height / _containerIconHeight,
            width: MediaQuery.of(context).size.width / _containerIconWidth,
            decoration: BoxDecoration(
                borderRadius: DoctorConst.borderRadius10,
                color: DoctorConst.colorBlue),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.manage_search_outlined,
                  color: DoctorConst.colorWhite,
                )),
          ),
        ),
      ],
    );
  }

  AppBar _appBar() {
    final double _leftP = 10;
    final double _maxRadius = 19;

    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: _leftP),
        child: CircleAvatar(
          maxRadius: _maxRadius,
          child: ClipRRect(
            borderRadius: DoctorConst.borderRadius30,
            child: Image.asset(DoctorConst.imageDoctorHomeProfile),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DoctorConst.doctorHomeAppbarTitle),
          Text(DoctorConst.doctorHomeAppbarUserName),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundColor: DoctorConst.colorWhite,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
            ),
          ),
        ),
      ],
      toolbarHeight: 120,
      backgroundColor: DoctorConst.colorBlue,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: DoctorConst.radius30,
          bottomRight: DoctorConst.radius30,
        ),
      ),
    );
  }
}
