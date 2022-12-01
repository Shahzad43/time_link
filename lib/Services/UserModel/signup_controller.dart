import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_services.dart';

class SignUp extends GetxController {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Rx<TextEditingController> bussinessNameController =
      TextEditingController().obs;
  Rx<TextEditingController> usernameController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> bussinesphonenoController =
      TextEditingController().obs;
  Rx<TextEditingController> personalphoenoController =
      TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> abnacnController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  void onSignup() async {
    UserCredential currentUser = await _auth.createUserWithEmailAndPassword(
      email: emailController.value.text.trim(),
      password: passwordController.value.text.trim(),
    );
    if (currentUser.user!.uid != "") {
      UserModel data = UserModel(
          uid: currentUser.user!.uid,
          abnAcn: abnacnController.value.text,
          bussinessName: bussinessNameController.value.text,
          emailAddress: emailController.value.text,
          password: passwordController.value.text,
          personalPhoneNo: personalphoenoController.value.text,
          bussinessPhoneNo: bussinesphonenoController.value.text,
          userName: usernameController.value.text);
      await _firestore
          .collection("Users")
          .doc(data.uid)
          .set(data.toMap())
          .then((value) {
        print("Data uploaded");
      });

      Get.back();
    } else {
      print("snakbar error");
    }
  }

  void onUpdate() async {
    String docId="";
    await FirebaseFirestore.instance
        .collection("Users")
        .where("emailAddress", isEqualTo: emailController.value.text).where("password",isEqualTo: passwordController.value.text)
        .get()
        .then((QuerySnapshot value){
          for(var doc in value.docs){
            if(doc['emailAddress']==emailController.value.text ){
              docId = doc.id.toString();
            }

          }

    });

    UserModel userData = UserModel(
        uid: docId,
        abnAcn: abnacnController.value.text,
        bussinessName: bussinessNameController.value.text,
        emailAddress: emailController.value.text,
        password: passwordController.value.text,
        personalPhoneNo: personalphoenoController.value.text,
        bussinessPhoneNo: bussinesphonenoController.value.text,
        userName: usernameController.value.text);


    await FirebaseFirestore.instance
        .collection("Users")
        .doc(docId).update(userData.toMap());
    print("Data updated");
    Get.back();
  }
}
