import 'package:botanicare/src/ui/Weather/DetailCity_Bloc.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class City extends StatefulWidget {
  const City({Key key}) : super(key: key);

  City._();

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  final bloc = DetailCityBloc();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: bloc,
        builder: (context, child) {
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
                      onChanged: bloc.onchangeText,
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
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: bloc.cities.toList().length,
                        itemBuilder: (context, index) {
                          final city = bloc.cities[index];
                          return ListTile(
                            title: Text(
                              city.title,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: kPrimaryColor,
                              ),
                              onPressed: () {
                                bloc.addCity(city);
                              },
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
