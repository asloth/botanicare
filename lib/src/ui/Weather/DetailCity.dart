import 'package:botanicare/src/ui/Weather/City.dart';

import 'model/Weather.dart';

class DetailCity {
  final String title;
  final int id;
  final List<Weather> weathers;

  DetailCity({
    this.title,
    this.id,
    this.weathers,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "woeid": id,
        "weathers": weathers.map((e) => e.toJson()),
      };

  factory DetailCity.fromJson(Map<String, dynamic> map) {
    return DetailCity(
      id: map['woeid'],
      title: map['title'],
    );
  }

  DetailCity fromWeathers(List<Weather> weathers) {
    return DetailCity(
      id: id,
      title: title,
      weathers: weathers,
    );
  }
}
