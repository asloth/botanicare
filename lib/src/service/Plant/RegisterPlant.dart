import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterPlant {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference vegetable =
      FirebaseFirestore.instance.collection('vegetable');

  Future<void> addPlant(String name, String nick, int quantity,
      String sowingtime, String metrics, String other, String type) {
    return vegetable
        .add({
          'name': name,
          'nick': nick,
          'sowingtime': sowingtime,
          'quantity': quantity,
          'metrics': metrics,
          'other': other,
          'state': true,
          'VEGETABLETYPE': type,
        })
        .then((value) => print("Planta añadida"))
        .catchError((error) => print("Error al añadir planta: $error"));
  }
}
