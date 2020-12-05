import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Plant {
  CollectionReference vegetable;

  Plant(
    this.vegetable,
  );

  Future<void> addPlant(
      {String name,
      String nick,
      String quantity,
      int sowingtime,
      String metrics,
      String other,
      int type}) async {
    try {
      await vegetable
          .add({
            'name': name,
            'nick': nick,
            'quantity': quantity,
            'metrics': metrics,
            'sowingtime': metrics,
            'other': other,
            'state': true,
            'vegetabletype': type, //acá no estoy segura
          })
          .then((value) => print("Planta añadida"))
          .catchError((error) => print("Error al añadir planta: $error"));
    } on FirebaseException catch (e) {
      print(e.message);
    }
  }
}
