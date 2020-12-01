import 'dart:ffi';

import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterActivity {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference activity =
      FirebaseFirestore.instance.collection('activity');

  Future<void> addActivity(String name, String input, int quantity,
      String metrics, Double cost, DateTime did, int vegetable) {
    return activity
        .add({
          'name': name,
          'input': input,
          'quantity': quantity,
          'metrics': metrics,
          'cost': cost,
          'did': did,
          'VEGETABLE': vegetable //acá no estoy segura
        })
        .then((value) => print("Actividad añadida"))
        .catchError((error) => print("Error al añadir Actividad: $error"));
  }
}
