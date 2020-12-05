import 'package:botanicare/src/service/Plant/RegisterPlant.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Hortaliza/Header.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorArea.dart';
import 'package:botanicare/src/ui/Hortaliza/Nombre.dart';
import 'package:botanicare/src/ui/Hortaliza/Apodo.dart';
import 'package:provider/provider.dart';

class HortalizaForm extends StatefulWidget {
  const HortalizaForm({
    Key key,
  }) : super(key: key);

  @override
  _HortalizaFormState createState() => _HortalizaFormState();
}

class _HortalizaFormState extends State<HortalizaForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  final TextEditingController nick = TextEditingController();
  final TextEditingController metrics = TextEditingController();
  final TextEditingController other = TextEditingController();
  int dropdownValue;
  String selectedSeason;
  final TextEditingController cantidad = TextEditingController();

  List<DropdownMenuItem<String>> seasonsList = [];
  List<DropdownMenuItem<int>> typeList = [];

  void loadSeasonsList() {
    seasonsList = [];
    seasonsList.add(new DropdownMenuItem(
      child: new Text('Primavera - Verano'),
      value: 'Primavera - Verano',
    ));
    seasonsList.add(new DropdownMenuItem(
      child: new Text('Otoño - Invierno'),
      value: 'Otoño - Invierno',
    ));
    seasonsList.add(new DropdownMenuItem(
      child: new Text('Todo el año'),
      value: 'Todo el año',
    ));
  }

  void loadTypeList() {
    typeList = [];
    typeList.add(new DropdownMenuItem(
      child: new Text('Hoja'),
      value: 1,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Vainas'),
      value: 2,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Tallos y peciolos'),
      value: 3,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Flores'),
      value: 4,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Frutos'),
      value: 5,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Bulbos'),
      value: 6,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Tuberculos'),
      value: 7,
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Raices'),
      value: 8,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadTypeList();
    loadSeasonsList();
    Size size = MediaQuery.of(context).size;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registro exitoso'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Felicidades por tu nueva planta!'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Gracias'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(),
          SizedBox(height: size.height * 0.03),
          Nombre(
            hintText: 'Ingrese el nombre de su hortaliza',
            controller: name,
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            //margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Tipo de Hortaliza',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kNegro,
                    fontSize: size.width * 0.045,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
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
                      items: typeList,
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Apodo(
            controller: nick,
            hintText: 'Ingrese el apodo de su hortaliza',
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            //margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Época del Año',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kNegro,
                    fontSize: size.width * 0.045,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
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
                    child: DropdownButton<String>(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFFBDC1BB),
                      ),
                      value: selectedSeason,
                      isExpanded: true,
                      hint: selectedSeason != null
                          ? null
                          : Text(
                              'Selecciona',
                            ),
                      style: TextStyle(
                        color: kTextColor,
                      ),
                      items: seasonsList,
                      onChanged: (newValue) {
                        setState(() {
                          selectedSeason = newValue;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          ContenedorArea(
            cantidadController: cantidad,
            metricaController: metrics,
            otroController: other,
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'Cancelar',
                      style: TextStyle(
                        color: kVerde,
                        fontSize: size.width * 0.045,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: size.width * 0.04),
              RaisedButton(
                color: kVerde,
                onPressed: () {
                  context.read<Plant>().addPlant(
                        metrics: metrics.text.trim(),
                        name: name.text.trim(),
                        nick: nick.text.trim(),
                        quantity: cantidad.text.trim(),
                        other: other.text.trim(),
                        sowingtime: selectedSeason,
                        type: dropdownValue,
                      );
                  _showMyDialog();
                },
                child: Row(
                  children: [
                    Text(
                      'Guardar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.045,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
