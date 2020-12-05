import 'dart:ui';
import 'package:botanicare/src/service/Plant/RegisterPlant.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/HomeScreen.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorEconomica.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/comon/BackBlanco.dart';
import 'package:botanicare/src/ui/Hortaliza/HeaderModificar.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorArea.dart';
import 'package:botanicare/src/ui/Hortaliza/Nombre.dart';
import 'package:botanicare/src/ui/Hortaliza/Apodo.dart';
import 'package:botanicare/src/ui/Hortaliza/Epoca.dart';
import 'package:provider/provider.dart';
import 'package:botanicare/src/ui/Hortaliza/ContenedorCalendario.dart';

class ModificarHortalizaScreen extends StatefulWidget {
  final String id;

  ModificarHortalizaScreen({
    Key key,
    @required this.id,
  }) : super(key: key);

  @override
  _ModificarHortalizaScreenState createState() =>
      _ModificarHortalizaScreenState();
}

class _ModificarHortalizaScreenState extends State<ModificarHortalizaScreen> {
  Map<String, dynamic> docc;
  final _formKey = GlobalKey<FormState>();
  TextEditingController name;
  TextEditingController nick;
  TextEditingController metrics = TextEditingController(text: '-');
  TextEditingController other;
  String dropdownValue;
  TextEditingController cantidad;
  String selectedSeason;

  Future<void> getData(String id) async {
    await FirebaseFirestore.instance
        .collection('vegetable')
        .doc(id)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        this.docc = documentSnapshot.data();
        setState(() {
          name = TextEditingController(text: docc['name']);
          nick = TextEditingController(text: docc['nick']);
          other = TextEditingController(text: docc['other']);
          dropdownValue = docc['vegetabletype'];
          selectedSeason = docc['sowingtime'];
          cantidad = TextEditingController(text: docc['quantity']);
        });
      }
    });
  }

  List<DropdownMenuItem<String>> seasonsList = [];
  List<DropdownMenuItem<String>> typeList = [];

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
      value: 'Hoja',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Vainas'),
      value: 'Vainas',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Tallos y peciolos'),
      value: 'Tallos y peciolos',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Flores'),
      value: 'Flores',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Frutos'),
      value: 'Frutos',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Bulbos'),
      value: 'Bulbos',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Tuberculos'),
      value: 'Tuberculos',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Raices'),
      value: 'Raices',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadTypeList();
    loadSeasonsList();
    Size size = MediaQuery.of(context).size;
    getData(widget.id);

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Actualizacion exitosa'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Felicidades por tu planta!'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Gracias'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BackBlanco(
            child: Container(
              height: size.height * 2.2,
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding * 0.9,
                10,
                kDefaultPadding * 0.9,
                kDefaultPadding * 0.9,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Header(),
                    SizedBox(height: size.height * 0.03),
                    Nombre(
                      controller: name,
                    ),
                    //TipoHortaliza(),
                    SizedBox(height: size.height * 0.02),
                    Apodo(
                      controller: nick,
                    ),
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
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 1),
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
                              fontSize: size.width * 0.04,
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 1),
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    ContenedorArea(
                      cantidadController: cantidad,
                      metricaController: metrics,
                      otroController: other,
                    ),
                    SizedBox(height: size.height * 0.05),
                    ContenedorCalendario(),
                    SizedBox(height: size.height * 0.05),
                    /*ContenedorProduccion(),
                    SizedBox(height: size.height * 0.05),*/
                    SizedBox(height: size.height * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
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
                            context.read<Plant>().updateplant(
                                  id: widget.id,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
