import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ModifyPlant {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference vegetable =
      FirebaseFirestore.instance.collection('vegetable');

  Future<void> updateplant(
      String name,
      String nick,
      int quantity,
      String sowingtime,
      String metrics,
      String other,
      String type,
      bool state,
      String id) {
    return vegetable
        .doc(id)
        .update({
          'name': name,
          'nick': nick,
          'sowingtime': sowingtime,
          'quantity': quantity,
          'metrics': metrics,
          'other': other,
          'state': state,
          'VEGETABLETYPE': type,
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }
}
