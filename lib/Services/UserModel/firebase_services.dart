import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class UserModel{
  String? uid;
  String? bussinessName;
  String? userName;
  String? password;
  String? bussinessPhoneNo;
  String? personalPhoneNo;
  String? emailAddress;
  String? abnAcn;

  UserModel({
    this.uid,
    this.bussinessName,
    this.userName,
    this.password,
    this.bussinessPhoneNo,
    this.personalPhoneNo,
    this.emailAddress,
    this.abnAcn,
});
  factory UserModel.fromMap(map){
    return UserModel(
      uid: map['uid'],
      bussinessName: map['bussinessName'],
      userName: map['userName'],
      password: map['password'],
      bussinessPhoneNo: map['bussinessPhoneNo'],
      personalPhoneNo: map['personalPhoneNo'],
      emailAddress: map['emailAddress'],
      abnAcn: map['abnAcn'],
    );
  }
  Map<String,dynamic> toMap(){
    return {
      'uid' : uid,
      'bussinessName': bussinessName,
      'userName': userName,
      'password': password,
      'bussniessPhoneNo': bussinessPhoneNo,
      'personalPhoneNo': personalPhoneNo,
      'emailAddress': emailAddress,
      'abnAcn': abnAcn,


    };
  }
  signUpToFireBase() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();

}



}