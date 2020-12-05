import 'package:botanicare/src/ui/Constants.dart';
import 'package:botanicare/src/ui/comon/Background.dart';
import 'package:botanicare/src/ui/garden/PlantCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HuertoScreen extends StatelessWidget {
  const HuertoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Background(
        child: Container(
          height: size.height,
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding,
            25,
            kDefaultPadding,
            kDefaultPadding * 0.9,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Mi huerto',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: size.height * 0.042,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('vegetable')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    List<DocumentSnapshot> docs = snapshot.data.docs;
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data();
                        return PlantCard(
                          plantNickname: data['nick'],
                          plantName: data['name'],
                          seedtime: data['quantity'],
                          station: data['sowingtime'],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
