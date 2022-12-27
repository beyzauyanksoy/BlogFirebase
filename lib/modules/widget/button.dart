import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
