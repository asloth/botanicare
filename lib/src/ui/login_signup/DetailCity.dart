class DetailCity {
  final String title;
  final int id;

  DetailCity({this.title, this.id});

  factory DetailCity.fromJson(Map<String, dynamic> map) {
    return DetailCity(
      id: map['woeid'],
      title: map['title'],
    );
  }
}
