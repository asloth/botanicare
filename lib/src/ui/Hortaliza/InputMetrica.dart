import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputMetrica extends StatefulWidget {
  InputMetrica({Key key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<InputMetrica> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue;

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
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: kGrey,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Color(0xFFBDC1BB),
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFFBDC1BB),
                ),
                value: dropdownValue,
                isExpanded: true,
                hint: dropdownValue != null
                    ? null
                    : Text(
                        'Selecciona',
                      ),
                style: TextStyle(
                  color: kTextColor,
                ),
                items: <String>[
                  'kg',
                  'm',
                  'Bolsa Grande',
                  'Bolsa Pequeña',
                  'Balde',
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
