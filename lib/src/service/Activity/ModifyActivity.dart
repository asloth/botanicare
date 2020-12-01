import 'dart:ffi';

import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ModifyActivity {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference activity =
      FirebaseFirestore.instance.collection('activity');

  Future<void> updateActivity(String name, String input, int quantity,
      String metrics, Double cost, DateTime did, int vegetable) {
    return activity
        .doc(
            '1') //asi esta en el ejemplo pero cuando vas a la funcion te dice que es para ver si el documento esta vacio
        .update({
          'name': name,
          'input': input,
          'quantity': quantity,
          'metrics': metrics,
          'cost': cost,
          'did': did,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }
}
