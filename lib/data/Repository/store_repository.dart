import 'package:botanicare/src/ui/Weather/DetailCity.dart';

abstract class StoreRepository {
  Future<void> saveCity(DetailCity detailcity);
  //Future<void> saveCities(List<City> cities);
  Future<List<DetailCity>> getCities();
  //Future<DateTime> getLastUpdate();
  //Future<void> saveLastUpdate();
  //Future<void> deleteCity(City city);
}
