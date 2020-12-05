import 'dart:convert';
//import 'dart:html';
import 'package:botanicare/data/Repository/store_impl.dart';
import 'package:botanicare/data/Repository/store_repository.dart';
import 'package:botanicare/src/ui/Weather/model/Weather.dart';
import 'package:http/http.dart' as http;
import 'package:botanicare/src/ui/comon/Debouncer.dart';
import 'package:flutter/cupertino.dart';
import 'DetailCity.dart';
import 'package:botanicare/data/data_constants.dart';

class DetailCityBloc extends ChangeNotifier {
  final debouncer = Debouncer();
  final StoreRepository storage = StoreImpl();
  List<DetailCity> cities = [];
  //bool loading = false;

  void onchangeText(String text) {
    debouncer.run(
      () {
        if (text.isNotEmpty) requestSearch(text);
      },
    );
  }

  void setCity() async {
    final url = api;
    final response = await http.get(url);
    final data = jsonDecode(response.body) as List;

    cities = data.map((e) => DetailCity.fromJson(e)).toList();
    print(cities);
  }

  void requestSearch(String text) async {
    //interpolacion de cadenas
    //loading = true;
    //notifyListeners();
    final url = '${api}search/?query=$text';
    final response = await http.get(url);
    final data = jsonDecode(response.body) as List;

    cities = data.map((e) => DetailCity.fromJson(e)).toList();
    print(cities);
    //loading = true;
    //notifyListeners();
  }

  void addCity(DetailCity city) async {
    final url = api;
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final weatherData = data['consolidated_weather'] as List;
    final weathers = weatherData.map((e) => Weather.fromJson(data)).toList();
    final newCity = city.fromWeathers(weathers);
    storage.saveCity(newCity);

    //notifyListeners();
    print(newCity.toJson());
  }
}
