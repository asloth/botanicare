import 'dart:ffi';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterCalendar {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference calendar =
      FirebaseFirestore.instance.collection('Calendar');

  Future<void> addCalendar(
      DateTime ground, DateTime sowing, DateTime harvest, int vegetable) {
    return calendar
        .add({
          'ground': ground,
          'sowing': sowing,
          'harvest': harvest,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Calendar añadida"))
        .catchError((error) => print("Error al añadir Calendar: $error"));
  }

  Future<void> updateCalendar(DateTime ground, DateTime sowing,
      DateTime harvest, int vegetable, String id) {
    return calendar
        .doc(id)
        .update({
          'ground': ground,
          'sowing': sowing,
          'harvest': harvest,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }
}
