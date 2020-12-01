import 'dart:ffi';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference user = FirebaseFirestore.instance.collection('user');

  Future<void> updateUser(
      String username,
      String email,
      String address,
      String password,
      String ub,
      String woeid,
      String photo,
      String orchartType,
      String vegetable,
      String id) {
    return user
        .doc(id)
        .update({
          'username': username,
          'email': email,
          'address': address,
          'password': password,
          'ub': ub,
          'woeid': woeid,
          'photo': photo,
          'ORCHARDTYPE': orchartType,
          'VEGETABLE': vegetable
        })
        .then((value) => print("Actualización exitosa"))
        .catchError((error) => print("Error al actualizar: $error"));
  }

  Future<void> deleteUser(String id) {
    return user
        .doc(id)
        .delete()
        .then((value) => print("Uusario eliminada"))
        .catchError((error) => print("Error al eliminar usuario: $error"));
  }
}
