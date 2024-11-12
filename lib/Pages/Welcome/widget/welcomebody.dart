import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark_chat_app/Config/images.dart';
import 'package:sampark_chat_app/Config/strings.dart';

class Welcomebody extends StatelessWidget {
  const Welcomebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsImages.boyPic,
            ),
            SvgPicture.asset(AssetsImages.connectSvg),
            Image.asset(
              AssetsImages.girlPic,
            ),
          ],
        ),
        SizedBox(height: 30),
        Text(
          WelcomePageString.NowYouAre,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          WelcomePageString.Connected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 20),
        Text(
          WelcomePageString.Discription,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}