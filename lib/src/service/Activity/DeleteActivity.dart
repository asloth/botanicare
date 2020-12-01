import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DeleteActivity {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference activity =
      FirebaseFirestore.instance.collection('activity');

  Future<void> deleteActivity(String id) {
    return activity
        .doc(id)
        .delete()
        .then((value) => print("Actividad eliminada"))
        .catchError((error) => print("Error al eliminar Actividad: $error"));
  }
}
