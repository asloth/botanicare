import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const InputArea({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      width: size.width * 0.9,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: kCeleste,
          width: 1,
        ),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: kPrimaryColor,
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
