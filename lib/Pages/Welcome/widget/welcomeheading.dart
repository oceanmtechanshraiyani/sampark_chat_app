import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark_chat_app/Config/images.dart';
import 'package:sampark_chat_app/Config/strings.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsImages.appIconSvg,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineLarge,
        )
      ],
    );
  }
}
