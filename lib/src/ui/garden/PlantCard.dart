import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final String plantNickname, imgUrl, station, plantName, seedtime;
  const PlantCard({
    Key key,
    this.plantNickname,
    this.imgUrl,
    this.station,
    this.plantName,
    this.seedtime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: size.height * 0.15,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Romus',
                )
              ],
            ),
            Row(children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hortaliza:',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Tomate',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
