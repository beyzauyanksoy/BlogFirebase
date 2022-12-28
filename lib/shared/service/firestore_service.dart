import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/blog/blog_home_controller.dart';


class FireStoreService extends GetxService {
  FirebaseFirestore db = FirebaseFirestore.instance;
  
  CollectionReference yazilar =
      FirebaseFirestore.instance.collection('yazilar');

      List itemList = [];
  Future<FireStoreService> init() async {
    return this;
  }

  // DocumentSnapshot<Map<String, dynamic>>? data;
  Future<DocumentSnapshot<Map<String, dynamic>>?>? getCollection() async {
    return await db.collection("yazilar").doc("yazi1").get();
  }

  addContents(title, content) async{
    await yazilar
        .add({
          'baslik': title,
          'icerik': content,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add contents: $error"));
  }

  
 

  
}
