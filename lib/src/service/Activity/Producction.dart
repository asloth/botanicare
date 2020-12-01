import 'dart:ffi';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterProduction {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference production =
      FirebaseFirestore.instance.collection('Production');

  Future<void> addProduction(
      DateTime harvest,
      Double consumption,
      Double sale,
      String metrics,
      Double totalProduction,
      Double totalCompost,
      String othersActivities,
      int vegetable) {
    return production
        .add({
          'harvest': harvest,
          'consumption': consumption,
          'sale': sale,
          'metrics': metrics,
          'totalProduction': totalProduction,
          'totalCompost': totalCompost,
          'OthersActivities': othersActivities,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Producción añadida"))
        .catchError((error) => print("Error al añadir Producción: $error"));
  }

  Future<void> updateProducction(
      DateTime harvest,
      Double consumption,
      Double sale,
      String metrics,
      Double totalProduction,
      Double totalCompost,
      String othersActivities,
      int vegetable,
      String id) {
    return production
        .doc(id)
        .update({
          'harvest': harvest,
          'consumption': consumption,
          'sale': sale,
          'metrics': metrics,
          'totalProduction': totalProduction,
          'totalCompost': totalCompost,
          'OthersActivities': othersActivities,
          'VEGETABLE': vegetable,
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }
}
