import 'dart:convert';
import 'package:botanicare/src/ui/Weather/DetailCity_Bloc.dart';
import 'package:botanicare/src/ui/Weather/model/Weather.dart';
import 'package:flutter/material.dart';
import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/Weather/DetailCity.dart';
import 'package:http/http.dart' as http;
import 'package:botanicare/data/data_constants.dart';

class WeatherWidget extends StatelessWidget {
  final DetailCity city;
  final Weather weather;
  const WeatherWidget({key, this.city, this.weather}) : super(key: key);

  void setCity() async {
    List<DetailCity> cities = [];
    final url = api;
    final response = await http.get(url);
    final data = jsonDecode(response.body) as List;
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    setCity();
    final bloc = DetailCityBloc();
    bloc.addCity(city);
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.085,
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_drama,
            color: Colors.blue,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
            child: Text(
              'Nublado',
              style: TextStyle(
                fontSize: size.height * 0.02,
                color: Colors.lightBlue,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
            child: Icon(Icons.ac_unit),
          ),
          Text(
            '18°C',
            //weather.theTemp.toString(),
            //'21',
            style: TextStyle(
              fontSize: size.height * 0.02,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
