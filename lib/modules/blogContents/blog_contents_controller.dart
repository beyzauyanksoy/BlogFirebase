import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../shared/service/firestore_service.dart';

class BlogContentsController extends GetxController{

TextEditingController title=TextEditingController();
TextEditingController contents=TextEditingController();
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService auth = FireStoreService();

}