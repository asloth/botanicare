import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputLista extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  InputLista({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            width: size.width * 0.3,
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
          ),
        ],
      ),
    );
  }
}
