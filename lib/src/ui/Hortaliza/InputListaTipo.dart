import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class InputListaTipo extends StatefulWidget {
  InputListaTipo({
    Key key,
    this.typeList,
  }) : super(key: key);

  final List<DropdownMenuItem<int>> typeList;
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<InputListaTipo> {
  final _formKey = GlobalKey<FormState>();
  int dropdownValue;
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
            width: size.width * 0.3,
            decoration: BoxDecoration(
              color: kBackgroundColor2,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Color(0xFFBDC1BB),
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
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
                items: widget.typeList,
                onChanged: (newValue) {
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
