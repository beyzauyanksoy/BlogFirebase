import 'package:firebase_uygulama/shared/service/analytics_service.dart';
import 'package:firebase_uygulama/shared/service/auth_service.dart';
import 'package:firebase_uygulama/shared/service/firebase_service.dart';
import 'package:get/get.dart';

import 'shared/service/firestore_service.dart';

class DenpendencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => AnalyticsService().init());
    await Get.putAsync(() => FireStoreService().init());
  }
}
