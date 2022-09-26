import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_headlinefive_bold.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_headlinesix_bold_container.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_headlinesix_bold_detail.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  final double _height = 1;
  final double _rightP = 20;
  final double _leftP = 20;
  final double _topP = 20;
  final double _heightC = 6;
  final double _widthC = 3;
  final double _heightinfo = 5.5;

  final double _leftContainerP = 20;
  final double _topContainerP = 20;
  final double _rightContainerP = 20;

  final double _heightConAppo = 12;
  final double _widthConAppo = 6;

  final double _heightEleButton = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _appBarRowTitleIconbutton(context),
            DoctorConst.sizedBoxH20,
            _containerwidgetsAll(context),
          ],
        ),
      ),
    );
  }

  Container _containerwidgetsAll(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: DoctorConst.colorWhite,
              borderRadius: BorderRadius.only(
                  topLeft: DoctorConst.radius35,
                  topRight: DoctorConst.radius35),
            ),
            height: MediaQuery.of(context).size.height / _height,
            width: MediaQuery.of(context).size.width,
            child: _paddingContainerWidgets(context),
          );
  }

  Padding _paddingContainerWidgets(BuildContext context) {
    return Padding(
              padding:
                  EdgeInsets.only(left: _leftP, top: _topP, right: _rightP),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _rowContainerColmun(context),
                  DoctorConst.sizedBoxH25,
                  _containerRowColumn(context),
                  DoctorConst.sizedBoxH25,
                  _rowDetailTitle(),
                  DoctorConst.sizedBoxH10,
                  _detailTexts(context),
                  DoctorConst.sizedBoxH25,
                  _rowWork(),
                  DoctorConst.sizedBoxH15,
                  DoctorTextSubTitleOne(
                    text: DoctorConst.doctorDetailNateTime,
                  ),
                  DoctorConst.sizedBoxH25,
                  DoctorTitleHedlineSixDetail(
                      text: DoctorConst.doctorDetailAppointment),
                  DoctorConst.sizedBoxH15,
                  _containersNates(context),
                  DoctorConst.sizedBoxH25,
                  _containerGradientElevatedButton(context),
                ],
              ),
            );
  }

  Container _containerGradientElevatedButton(BuildContext context) {
    return Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: DoctorConst.borderRadius40),
                      gradient: LinearGradient(
                        colors: [
                          DoctorConst.colorBlue,
                          DoctorConst.colorGrey
                        ],
                      ),
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height /
                          _heightEleButton,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_outlined,
                          color: DoctorConst.colorWhite,size: 30,
                        ),
                        label: Text(
                          DoctorConst.doctorDetailElevatedButton,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: DoctorConst.colorWhite),
                        ),
                        style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                    ),
                  );
  }

  Row _containersNates(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _containerNate(context),
        _containerNateZero(context),
        _containerNateOne(context),
        _containerTwo(context),
        _containerNatetree(context),
      ],
    );
  }

  Container _containerNatetree(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius10,
        border: Border.all(color: DoctorConst.colorBlack, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightConAppo,
      width: MediaQuery.of(context).size.width / _widthConAppo,
      child: Padding(
        padding: DoctorConst.paddingAll5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConZero),
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConDayZero),
          ],
        ),
      ),
    );
  }

  Container _containerTwo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius10,
        border: Border.all(color: DoctorConst.colorBlack, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightConAppo,
      width: MediaQuery.of(context).size.width / _widthConAppo,
      child: Padding(
        padding: DoctorConst.paddingAll5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConTree),
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConDayTree),
          ],
        ),
      ),
    );
  }

  Container _containerNateOne(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius10,
        border: Border.all(color: DoctorConst.colorBlack, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightConAppo,
      width: MediaQuery.of(context).size.width / _widthConAppo,
      child: Padding(
        padding: DoctorConst.paddingAll5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConTwo),
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConDayTwo),
          ],
        ),
      ),
    );
  }

  Container _containerNateZero(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius10,
        border: Border.all(color: DoctorConst.colorBlack, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightConAppo,
      width: MediaQuery.of(context).size.width / _widthConAppo,
      child: Padding(
        padding: DoctorConst.paddingAll5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConOne),
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConDayOne),
          ],
        ),
      ),
    );
  }

  Container _containerNate(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius10,
        border: Border.all(color: DoctorConst.colorBlack, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightConAppo,
      width: MediaQuery.of(context).size.width / _widthConAppo,
      child: Padding(
        padding: DoctorConst.paddingAll5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorTitleHedlineSixContainer(text: DoctorConst.doctorDetailApCon),
            DoctorTitleHedlineSixContainer(
                text: DoctorConst.doctorDetailApConDay),
          ],
        ),
      ),
    );
  }

  Row _rowWork() {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: DoctorConst.colorBlue,
        ),
        DoctorConst.sizedBoxW5,
        DoctorTitleHedlineSixDetail(text: DoctorConst.doctorDetailWork),
      ],
    );
  }

  Text _detailTexts(BuildContext context) {
    return Text(
      DoctorConst.doctorDetailText,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.start,
    );
  }

  Row _rowDetailTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DoctorTitleHedlineSixDetail(text: DoctorConst.doctorDetailTitle),
        DoctorTitleHedlineSixContainer(text: DoctorConst.doctorDetailSee),
      ],
    );
  }

  Container _containerRowColumn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: DoctorConst.borderRadius20,
        border: Border.all(color: DoctorConst.colorBlue, width: 2),
      ),
      height: MediaQuery.of(context).size.height / _heightinfo,
      width: MediaQuery.of(context).size.width,
      child: IntrinsicHeight(
        child: Padding(
          padding: EdgeInsets.only(
              left: _leftContainerP,
              top: _topContainerP,
              bottom: _rightContainerP),
          child: _rowColmunsIconsTexts(),
        ),
      ),
    );
  }

  Row _rowColmunsIconsTexts() {
    return Row(
      children: [
        _columnIconText(),
        _verticalDivider(),
        _columnIcontexts(),
        _verticalDividerr(),
        _columnIconTextss(),
      ],
    );
  }

  VerticalDivider _verticalDividerr() {
    return VerticalDivider(
      color: DoctorConst.colorBlack,
      width: 50,
      indent: 10,
      endIndent: 10,
      thickness: 2,
    );
  }

  VerticalDivider _verticalDivider() {
    return VerticalDivider(
      color: DoctorConst.colorBlack,
      width: 40,
      indent: 10,
      endIndent: 10,
      thickness: 2,
    );
  }

  Column _columnIconTextss() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 193, 240, 183),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: DoctorConst.colorOrange,
            ),
          ),
        ),
        DoctorConst.sizedBoxH5,
        DoctorTextSubTitleOne(text: DoctorConst.doctorDetailContainerRating),
        DoctorConst.sizedBoxH5,
        DoctorTitleHedlineSixContainer(
            text: DoctorConst.doctorDetailContainerRatingPoint),
      ],
    );
  }

  Column _columnIcontexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 156, 201, 238),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: DoctorConst.colorBlue,
            ),
          ),
        ),
        DoctorConst.sizedBoxH5,
        DoctorTextSubTitleOne(
            text: DoctorConst.doctorDetailContainerExperience),
        DoctorConst.sizedBoxH5,
        DoctorTitleHedlineSixContainer(
            text: DoctorConst.doctorDetailContainerExperience5Y),
      ],
    );
  }

  Column _columnIconText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 156, 201, 238),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.people,
              color: DoctorConst.colorBlue,
            ),
          ),
        ),
        DoctorConst.sizedBoxH5,
        DoctorTextSubTitleOne(text: DoctorConst.doctorDetailContainerPatients),
        DoctorConst.sizedBoxH5,
        DoctorTitleHedlineSixContainer(
            text: DoctorConst.doctorDetailContainerPatients1k)
      ],
    );
  }

  Row _rowContainerColmun(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: DoctorConst.borderRadius40,
            color: Color.fromARGB(255, 83, 172, 245),
          ),
          height: MediaQuery.of(context).size.height / _heightC,
          width: MediaQuery.of(context).size.width / _widthC,
          child: Image.asset(DoctorConst.imageDoctorZeroinfo),
        ),
        DoctorConst.sizedBoxW20,
        _columnTextsRowIcons(context),
      ],
    );
  }

  Column _columnTextsRowIcons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorTitleHedlineFive(text: DoctorConst.doctorCardNameZero),
        DoctorConst.sizedBoxH5,
        Text(
          DoctorConst.doctorCardNameBranchZero,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: DoctorConst.colorOrange),
        ),
        DoctorConst.sizedBoxH15,
        _rowIconbutton()
      ],
    );
  }

  Row _rowIconbutton() {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 25,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call_outlined,
              color: DoctorConst.colorBlue,
              size: 30,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 164, 203, 235),
        ),
        DoctorConst.sizedBoxW25,
        CircleAvatar(
          maxRadius: 25,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_outlined,
              color: DoctorConst.colorRed,
              size: 30,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 243, 161, 129),
        ),
        DoctorConst.sizedBoxW25,
        CircleAvatar(
          maxRadius: 25,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: DoctorConst.colorGrey,
              size: 30,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 248, 210, 210),
        ),
      ],
    );
  }

  Padding _appBarRowTitleIconbutton(BuildContext context) {
    final double _leftP = 10;
    final double _topP = 50;
    final double _rightP = 10;

    return Padding(
      padding: EdgeInsets.only(left: _leftP, top: _topP, right: _rightP),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: DoctorConst.colorWhite,
              size: 35,
            ),
          ),
          Text(
            DoctorConst.doctorDetailAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: DoctorConst.colorWhite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: DoctorConst.colorWhite,
            ),
          ),
        ],
      ),
    );
  }
}
