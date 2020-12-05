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
      String sowingtime,
      String metrics,
      String other,
      String type}) async {
    try {
      await vegetable
          .add({
            'name': name,
            'nick': nick,
            'quantity': quantity,
            'metrics': metrics,
            'sowingtime': sowingtime,
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

  Future<void> updateplant({
    String id,
    String name,
    String nick,
    String quantity,
    String sowingtime,
    String metrics,
    String other,
    String type,
  }) async {
    try {
      await vegetable
          .doc(id)
          .update({
            'name': name,
            'nick': nick,
            'quantity': quantity,
            'metrics': '-',
            'sowingtime': sowingtime,
            'other': other,
            'state': true,
            'vegetabletype': type, //acá no estoy segura
          })
          .then((value) => print("Actualización exitosa"))
          .catchError((error) => print("Error al actualizar: $error"));
    } on FirebaseException catch (e) {
      print(e.message);
    }
  }

  Future<void> deletePlant({String id}) async {
    try {
      await vegetable
          .doc(id)
          .delete()
          .then((value) => print("Planta eliminada"))
          .catchError((error) => print("Error al eliminar planta: $error"));
    } catch (e) {
      print(e.message);
    }
  }
}
