import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'login_controller.dart';

class HomePage extends GetView<LoginController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 55, left: 25),
              child: Image.asset("assets/loginimage.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, top: 36),
              child: Container(
                width: double.infinity,
                child: const Text(
                  "Login Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 11, left: 29, right: 31),
              child: TextFormField(
                controller: controller.email..text="beyzauyaniksoy@gmail.com",
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, right: 31),
              child: TextFormField(
                controller: controller.password..text="beyzauyanik",
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 31, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Color(0xff625b5b),
                      fontSize: 16,
                      fontFamily: "Outfit",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34, right: 32, left: 28),
              child: GestureDetector(
                onTap: () async {
                  print(controller.email.text);
                  print(controller.password.text);
                  await controller.auth.account(controller.email.text.trim(),
                      controller.password.text.trim());
                      Get.toNamed(Routes.BLOGHOME);
                   
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      "Login ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Outfit",
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    width: 132,
                    height: 3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xff0b6efe), Color(0x00c4c4c4)],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 7, right: 14),
                    child: Text(
                      "Or Sign up With",
                      style: TextStyle(
                        color: Color(0xff555151),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -3.14,
                    child: Container(
                      width: 132,
                      height: 3,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Color(0xff0b6efe), Color(0x00c4c4c4)],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                width: 230,
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Image.asset("assets/Googlelogo.png"),
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xfff79aee),
                          width: 0.40,
                        ),
                        color: Color(0xffebe9eb),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/Facbook.png"),
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xfff79aee),
                          width: 0.40,
                        ),
                        color: Color(0xffebe9eb),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/Group.png"),
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xfff79aee),
                          width: 0.40,
                        ),
                        color: Color(0xffebe9eb),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.REGISTER);
                  //Get.to(RegisterPage(), binding: RegisterBinding());
                },
                child: Container(
                  child: Text("Click here to register"),
                ),
              ),
            ),
            Image.asset("assets/Vector.png")
          ],
        ),
      ),
    );
  }
}

// class Button extends StatelessWidget {
//   const Button({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: const Center(
//         child: Text(
//           "Login ",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontFamily: "Outfit",
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//       width: 330,
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: Color(0xff0b6efe),
//       ),
//     );
//   }
// }
