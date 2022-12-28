// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_uygulama/shared/service/analytics_service.dart';
import 'package:firebase_uygulama/shared/service/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogHomeController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService auth = FireStoreService();
  String? databaslik;
  String? dataicerik;
  List<QueryDocumentSnapshot<Map<String, dynamic>>> liste = [];

  AnalyticsService analyticsService = Get.find();
  @override
  void onInit() {
    getData();

    super.onInit();
  }


  getData() async {
    liste.clear();
    await db.collection("yazilar").get().then(
          (value) => {
            value.docs.forEach((element) {
              liste.add(element);
            })
          },
        );

    update();
  }

  deleteItem(String id) async {
    await FirebaseFirestore.instance.collection("yazilar").doc(id).delete();
    update();
  }
}
