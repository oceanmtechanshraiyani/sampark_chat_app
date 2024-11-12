import 'package:flutter/material.dart';
import 'package:sampark_chat_app/Pages/Auth/Widgets/authpagebody.dart';
import 'package:sampark_chat_app/Pages/Welcome/widget/welcomeheading.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView
          (
            child: Column(
              children: [
                WelcomeHeading(),
                SizedBox(
                  height: 40,
                ),
                Authpagebody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
