import 'package:firebase_uygulama/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


import '../../routes/app_pages.dart';
import '../widget/button.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Color(0xff0b6efe), title: Text("Register")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              Image.asset("assets/register.png"),
              // Padding(
              //   padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              //   child: TextFormField(
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       hintText: 'name',
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: controller.email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextFormField(
                  controller: controller.password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  (controller.auth.createUser(controller.email.text.trim(),
                      controller.password.text.trim()
                      ));
                      Get.toNamed(Routes.LOGIN);
                      
                      
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      "Login ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff0b6efe),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset("assets/Vector.png")
            ],
          ),
        ),
      ),
    );
  }
}
