import 'dart:convert';
import 'package:botanicare/data/Repository/store_repository.dart';
import 'package:botanicare/src/ui/Weather/City.dart';
import 'package:botanicare/src/ui/Weather/DetailCity.dart';
import 'package:shared_preferences/shared_preferences.dart';

const keyCities = 'cities';

class StoreImpl extends StoreRepository {
  @override
  Future<List<DetailCity>> getCities() async {
    // TODO: implement getCities
    //throw UnimplementedError();
    SharedPreferences prefers = await SharedPreferences.getInstance();

    final list = prefers.getStringList(keyCities);
    if (list != null && list.isNotEmpty) {
      final cities = list
          .map(
            (e) => DetailCity.fromJson(
              jsonDecode(e),
            ),
          )
          .toList();
      return cities;
    }
    return <DetailCity>[];
  }

  //@override
  //Future<void> saveCities(List<City> cities) {
  // TODO: implement saveCities
  //throw UnimplementedError();
  //}

  @override
  Future<void> saveCity(DetailCity detailcity) async {
    // TODO: implement saveCity
    //throw UnimplementedError();
    final list = await getCities();
    for (DetailCity item in list) {
      if (item.id == detailcity.id) {
        throw Exception('La ciudad existe');
      }
    }
    list.add(detailcity);
    SharedPreferences prefers = await SharedPreferences.getInstance();
    //int counter = {prefers.getInt('counter') ?? 0} + 1;
    prefers.setStringList(
      keyCities,
      list.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }
}
