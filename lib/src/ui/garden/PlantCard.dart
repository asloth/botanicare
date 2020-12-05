import 'package:botanicare/src/ui/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:botanicare/src/ui/DescripcionScreen.dart';

class PlantCard extends StatelessWidget {
  final String plantNickname, imgUrl, station, plantName, seedtime;
  const PlantCard({
    Key key,
    this.imgUrl,
    @required this.plantNickname,
    @required this.station,
    @required this.plantName,
    @required this.seedtime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      padding: EdgeInsets.fromLTRB(20, 5, 10, 10),
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$plantNickname\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.03,
                      ),
                    ),
                    TextSpan(
                      text: station,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: kPrimaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DescripcionScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: kPrimaryColor,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: kPrimaryColor,
                ),
                onPressed: null,
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2.0,
                ),
                child: SvgPicture.asset(
                  'assets/icons/orange-leaf.svg',
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hortaliza: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.height * 0.02,
                      ),
                    ),
                    TextSpan(
                      text: plantName,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.height * 0.02,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                child: SvgPicture.asset(
                  'assets/icons/blue-calendar.svg',
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Cantidad ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.height * 0.02,
                      ),
                    ),
                    TextSpan(
                      text: seedtime,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.height * 0.02,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
