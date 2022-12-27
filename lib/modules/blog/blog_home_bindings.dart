import 'package:get/get.dart';

import 'blog_home_controller.dart';



class BlogHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BlogHomeController());
  }
}
