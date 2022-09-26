import 'package:flutter/material.dart';

class TextFieldLearnView extends StatelessWidget {
  const TextFieldLearnView({Key? key}) : super(key: key);

  final _name = "Adı SoyAdı";
  final _phoneNumber = "Telefon Numarası";
  final _passsword = "Şifre";
  final _Identificationnumber = "Kimlik Numarası";
  final _save = "Kaydet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              txtName(),
              txtPassword(),
              txtPhonenumber(),
              txtIdentificationnumber(),
              elevatedsavebutton()
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton elevatedsavebutton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.save),
      label: Text(_save),
    );
  }

  TextField txtIdentificationnumber() {
    return TextField(
      maxLength: 11,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        //border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(_Identificationnumber),
        hintText: _Identificationnumber,
      ),
      keyboardType: TextInputType.number,
    );
  }

  TextField txtPhonenumber() {
    return TextField(
      maxLength: 11,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        //border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(_phoneNumber),
        hintText: _phoneNumber,
      ),
      keyboardType: TextInputType.phone,
    );
  }

  TextField txtPassword() {
    return TextField(
      maxLength: 11,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        //border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(_passsword),
        hintText: _passsword,
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  TextField txtName() {
    return TextField(
      maxLength: 11,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        //border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(_name),
        hintText: _name,
      ),
      keyboardType: TextInputType.name,
    );
  }
}
