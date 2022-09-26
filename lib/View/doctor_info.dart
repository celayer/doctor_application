import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/Constant/doctor_const.dart';
import 'package:flutter_doctor_app/Widget/container_circular.dart';
import 'package:flutter_doctor_app/Widget/container_circular_zero.dart';
import 'package:flutter_doctor_app/Widget/doctor_bottom_navigation_bar.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_headlinefive_bold.dart';
import 'package:flutter_doctor_app/Widget/doctor_text_subtitle1.dart';

class DoctorInfo extends StatelessWidget {
  DoctorInfo({super.key});

  final double _height = 1.8;
  final double _ElevatedButtonheight = 13;
  final shape = StadiumBorder();
  final double _leftOnly = 20.0;
  final double _rightOnly = 20.0;
  final double _topOnly = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _colmunContainerImageTitleText(context),
    );
  }

  FloatingActionButton _floatActionButton(BuildContext context) {
    final double _evelation = 8;

    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: DoctorConst.radius75,
              topRight: DoctorConst.radius75,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          context: context,
          builder: ((context) => Center(
                child: Padding(
                  padding: EdgeInsets.only(left: _leftOnly, right: _rightOnly),
                  child: _registerTextFormFieldAndElevatedButton(context),
                ),
              )),
        );
      },
      child: Icon(Icons.arrow_forward),
      elevation: _evelation,
    );
  }

  Column _registerTextFormFieldAndElevatedButton(BuildContext context) {
    return Column(
      children: [
        DoctorConst.sizedBoxH100,
        DoctorTitleHedlineFive(text: DoctorConst.doctorFormTitle),
        DoctorConst.sizedBoxH10,
        DoctorTextSubTitleOne(text: DoctorConst.doctorFormText),
        DoctorConst.sizedBoxH50,
        _textFieldName(),
        _textFiledEmailAdress(),
        _textFieldPassword(),
        _textFiledConfirmPassword(),
        DoctorConst.sizedBoxH100,
        _containerElevatedButtonGradient(context),
        DoctorConst.sizedBoxH10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DoctorTextSubTitleOne(text: DoctorConst.doctorFormTextEnd),
            GestureDetector(
                onTap: () {},
                child: DoctorTextSubTitleOne(
                    text: DoctorConst.doctorFormTextEndZero)),
          ],
        )
      ],
    );
  }

  Container _containerElevatedButtonGradient(BuildContext context) {
    final double _evelation = 0;
    return Container(
      decoration: ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(
          colors: [DoctorConst.colorBlue, DoctorConst.colorWhite],
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / _ElevatedButtonheight,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: ((context) => DoctorBottomNavigationBar()),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: _evelation,
          ),
          child: Text(
            DoctorConst.doctorFormElevatedButtonText,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorConst.colorWhite),
          ),
        ),
      ),
    );
  }

  TextField _textFiledConfirmPassword() {
    final int _maxLenght = 25;

    return TextField(
      maxLength: _maxLenght,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: DoctorConst.borderRadius20),
        hintText: DoctorConst.doctorFormTextFieldConfirmPassword,
        hintStyle: TextStyle(color: DoctorConst.colorBlack),
        filled: true,
        fillColor: DoctorConst.colorWhite,
      ),
      keyboardType: TextInputType.name,
      obscureText: true,
    );
  }

  TextField _textFieldPassword() {
    final int _maxLenght = 25;

    return TextField(
      maxLength: _maxLenght,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: DoctorConst.borderRadius20),
        hintText: DoctorConst.doctorFormTextFieldPassword,
        hintStyle: TextStyle(color: DoctorConst.colorBlack),
        filled: true,
        fillColor: DoctorConst.colorWhite,
      ),
      keyboardType: TextInputType.name,
      obscureText: true,
    );
  }

  TextField _textFiledEmailAdress() {
    final int _maxLenght = 25;

    return TextField(
      maxLength: _maxLenght,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: DoctorConst.borderRadius20),
        hintText: DoctorConst.doctorFormTextFieldEmailAdress,
        hintStyle: TextStyle(color: DoctorConst.colorBlack),
        filled: true,
        fillColor: DoctorConst.colorWhite,
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextField _textFieldName() {
    final int _maxLenght = 25;

    return TextField(
      maxLength: _maxLenght,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: DoctorConst.borderRadius20),
        hintText: DoctorConst.doctorFormTextFieldName,
        hintStyle: TextStyle(color: DoctorConst.colorBlack),
        filled: true,
        fillColor: DoctorConst.colorWhite,
      ),
      keyboardType: TextInputType.name,
    );
  }

  Column _colmunContainerImageTitleText(BuildContext context) {
    final double _topOnly = 75;
    return Column(
      children: [
        _containerColmunContainersImages(context),
        Padding(
          padding: EdgeInsets.only(top: _topOnly),
          child: DoctorTitleHedlineFive(text: DoctorConst.doctorInfoTitle),
        ),
        DoctorConst.sizedBoxH20,
        DoctorTextSubTitleOne(text: DoctorConst.doctorInfoText),
      ],
    );
  }

  Padding _paddingTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: _topOnly),
      child: Text(
        DoctorConst.doctorInfoTitle,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _containerColmunContainersImages(BuildContext context) {
    final double _radiusX = 250;
    final double _radiusY = 150;

    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.lightBlueAccent],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.elliptical(_radiusX, _radiusY),
          bottomLeft: Radius.elliptical(_radiusX, _radiusY),
        ),
      ),
      child: _clomunContainersImages(),
    );
  }

  Column _clomunContainersImages() {
    return Column(
      children: [
        _paddingContainerImage(),
        _paddingContainerImageZero(),
      ],
    );
  }

  Padding _paddingContainerImageZero() {
    final double _leftOnlyP = 180;
    final double _topOnlyP = 50;

    return Padding(
      padding: EdgeInsets.only(left: _leftOnlyP, top: _topOnlyP),
      child: ContainerCircularZero(
        widget: ClipRRect(
          borderRadius: DoctorConst.borderRadius100,
          child: Image.asset(DoctorConst.imageDoctorZeroinfo),
        ),
      ),
    );
  }

  Padding _paddingContainerImage() {
    final double _rightOnlyPa = 100;
    final double _topOnlyPa = 75;

    return Padding(
      padding: EdgeInsets.only(right: _rightOnlyPa, top: _topOnlyPa),
      child: ContainerCircular(
        widget: ClipRRect(
          borderRadius: DoctorConst.borderRadius100,
          child: Image.asset(
            DoctorConst.imageDoctorinfo,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
