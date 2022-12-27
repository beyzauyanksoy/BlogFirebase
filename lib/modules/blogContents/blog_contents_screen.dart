import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'blog_contents_controller.dart';

class BlogContents extends GetView<BlogContentsController> {
  const BlogContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              TextFormField(
            controller: controller.title,
                decoration: InputDecoration(
                    hintText: "Başlık",
                    hintStyle: TextStyle(color: Colors.red.shade300),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 200,
                child: TextFormField(
                  controller: controller.contents,
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText: "İçerik",
                      hintStyle: TextStyle(color: Colors.red.shade300),
                      border: InputBorder.none),
                ),
              ),
              ElevatedButton(onPressed: () {
                  controller.auth.addContents(controller.title.text, controller.contents.text);
              }, child: Text("Gönder"))
            ],
          ),
        ));
  }
}
