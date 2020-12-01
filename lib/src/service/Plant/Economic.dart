import 'dart:ffi';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterEconomic {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference economic =
      FirebaseFirestore.instance.collection('economic');

  Future<void> addEconomic(Double price, Double consumption, Double sale,
      Double saving, Double profit, Double totalCompost, int vegetable) {
    return economic
        .add({
          'price': price,
          'consumption': consumption,
          'sale': sale,
          'saving': saving,
          'profit': profit,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Economía añadida"))
        .catchError((error) => print("Error al añadir Economía : $error"));
  }

  Future<void> updateEconomic(
      Double price,
      Double consumption,
      Double sale,
      Double saving,
      Double profit,
      Double totalCompost,
      int vegetable,
      String id) {
    return economic
        .doc(id)
        .update({
          'price': price,
          'consumption': consumption,
          'sale': sale,
          'saving': saving,
          'profit': profit,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }
}
