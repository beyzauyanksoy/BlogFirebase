import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'blog_home_controller.dart';

class BlogHome extends GetView<BlogHomeController> {
  const BlogHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogHomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Color(0xffECECEC),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Blogs",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    // Image.asset("assets/Notification.png")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 250,
                        height: 42,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Color(0xffC8C8C8),
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Image.asset("assets/Filter.png"),
                        width: 51,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: controller.liste.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13, left: 15, right: 15, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.liste[index]["baslik"]!.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 15,
                                    backgroundColor: Colors.grey.shade200,
                                    child: const Icon(
                                      Icons.person,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Text(
                                      "Travis Aaron Wagner",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 39,
                                  ),
                                  const Icon(
                                    Icons.circle,
                                    size: 5,
                                    color: Color(0xffc7c7c7),
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  const Text(
                                    "Jul 19,2024",
                                    //"${controller.auth.data?["icerik"] ?? "deneme"}",
                                    style: TextStyle(
                                      color: Color(0xffc7c7c7),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 7, bottom: 14),
                                child: Container(
                                  color: const Color(0xffc7c7c7),
                                  width: 344,
                                  height: 1,
                                ),
                              ),
                              Text(
                                controller.liste[index]["icerik"]!.toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller
                                      .deleteItem(controller.liste[index].id);
                                      controller.onInit();

                                },
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Delete",
                                        //"${controller.data?["icerik"]}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Image.asset("assets/delete.png",color: Colors.white,width: 20,)
                                    ],
                                  ),
                                  width: 344,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.39),
                                    color: const Color(0xff171717),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // ElevatedButton(
                //   onPressed: () async {
                //     controller.analyticsService.logEvent();
                //   },
                //   child: const Text("veri getir"),
                // ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.CONTENTS);
          },
          child: Icon(Icons.pending),
        ),
      );
    });
  }
}
