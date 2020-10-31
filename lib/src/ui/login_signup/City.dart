import 'dart:convert';
import 'package:botanicare/data/data_constants.dart';
import 'package:botanicare/src/service/AuthService.dart';
import 'package:provider/provider.dart';
import 'package:botanicare/src/ui/comon/Debouncer.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class City extends StatefulWidget {
  const City({Key key}) : super(key: key);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  final debouncer = Debouncer();

  void onchangeText(String text) {
    debouncer.run(() {
      requestSearch(text);
    });
  }

  void requestSearch(String text) async {
    //interpolacion de cadenas
    final url = '${api}search/?query=$text';
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Seleccionar ciudad'),
            Spacer(),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: TextField(
                //Llamamos a la funcion con el debouncer
                onChanged: onchangeText,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'Buscar ciudad',
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
