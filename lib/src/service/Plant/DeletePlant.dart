import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DeletePlant {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference vegetable =
      FirebaseFirestore.instance.collection('vegetable');

  Future<void> deletePlant(String id) {
    return vegetable
        .doc(id)
        .delete()
        .then((value) => print("Planta eliminada"))
        .catchError((error) => print("Error al eliminar planta: $error"));
  }
}
