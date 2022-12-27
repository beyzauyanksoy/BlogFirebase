import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_uygulama/shared/service/firestore_service.dart';
import 'package:get/get.dart';

class BlogHomeController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService auth = FireStoreService();
  String? databaslik;
  String? dataicerik;
  List<dynamic> liste = [];

  @override
  void onInit() {
    getData();

    super.onInit();
  }

  var data;

  getData() async {
    data = await auth.getCollection();

    print(data);
    print(data["baslik"]);
    print(data["icerik"]);
    databaslik = data["baslik"];
    dataicerik = data["icerik"];
    // data = await db.collection("yazilar").doc("yazi1").get();
    db.collection("yazilar").snapshots().listen((event) {
      for (var element in event.docs) {
        liste.add(element);
        update();
      }
      print("aaaaaaaaaaaaaa ${liste}");
    });
    update();
  
  }
}
