import 'package:get/get.dart';

import 'blog_contents_controller.dart';



class BlogContentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BlogContentsController());
  }
}
