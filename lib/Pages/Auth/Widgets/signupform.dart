import 'package:flutter/material.dart';
import 'package:sampark_chat_app/Widget/primarybutton.dart';

class Signupform extends StatelessWidget {
  const Signupform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'Full Name',
            prefixIcon: Icon(
              Icons.person,
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.password_rounded,
            ),
          ),
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Primarybutton(
              btnName: "SIGN UP",
              icon: Icons.lock_open_outlined, ontap: () {
                
              },
            ),
          ],
        )
      ],
    );
  }
}
