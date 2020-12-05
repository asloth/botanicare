import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputFieldNume extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const InputFieldNume({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      width: size.width * 0.3,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xFFBDC1BB),
          width: 1,
        ),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: kPrimaryColor,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value.isEmpty) {
            return 'Complete los campos';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

/*

import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.4,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFBDC1BB),
          width: 1,
        ),
      ),
    );
  }
}
*/
