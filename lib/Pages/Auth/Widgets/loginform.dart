import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sampark_chat_app/Widget/primarybutton.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const  SizedBox(height: 20),
      const  TextField(
          decoration:  InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
            ),
          ),
        ),
      const  SizedBox(height: 20),
       const TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.password_rounded,
            ),
          ),
        ),
      const  SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Primarybutton(
              btnName: "LOGIN",
              icon: Icons.lock_open_outlined,
              ontap: () {
                Get.offAllNamed("/homePage");
              },
            ),
          ],
        )
      ],
    );
  }
}
