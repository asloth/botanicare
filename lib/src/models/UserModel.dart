import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String id;
  String userName;
  String photoUrl;
  String email;

  UserModel({
    this.id,
    this.userName,
    this.photoUrl,
    this.email,
  });

  factory UserModel.fromFireStore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data();
    return UserModel(
      id: userDoc.id,
      userName: userData['userName'],
      photoUrl: userData['photoUrl'],
      email: userData['email'],
    );
  }
  void setFromFireStore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data();
    this.id = userDoc.id;
    this.userName = userData['displayName'];
    this.photoUrl = userData['photoUrl'];
    this.email = userData['email'];
    notifyListeners();
  }
}
