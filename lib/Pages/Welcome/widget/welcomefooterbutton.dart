import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:sampark_chat_app/Config/images.dart';
import 'package:sampark_chat_app/Config/strings.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Welcomefooterbutton extends StatelessWidget {
  const Welcomefooterbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideAction(
          // ignore: body_might_complete_normally_nullable
          onSubmit: () {
            Get.offAllNamed("/authPage");
          },
          text: WelcomePageString.SlideToStart,
          textStyle: Theme.of(context).textTheme.labelLarge,
          sliderButtonIcon: Container(
            width: 25,
            height: 25,
            child: SvgPicture.asset(AssetsImages.plugSvg),
          ),
          submittedIcon: SvgPicture.asset(
            AssetsImages.connectSvg,
            width: 25,
          ),
          innerColor: Theme.of(context).colorScheme.primary,
          outerColor: Theme.of(context).colorScheme.primaryContainer,
        ),
      ],
    );
  }
}
