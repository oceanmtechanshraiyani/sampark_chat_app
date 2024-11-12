import 'package:flutter/material.dart';
import 'package:sampark_chat_app/Pages/Welcome/widget/welcomebody.dart';
import 'package:sampark_chat_app/Pages/Welcome/widget/welcomefooterbutton.dart';
import 'package:sampark_chat_app/Pages/Welcome/widget/welcomeheading.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WelcomeHeading(),
              Welcomebody(),
              Welcomefooterbutton(),
            ],
          ),
        ),
      ),
    );
  }
}
