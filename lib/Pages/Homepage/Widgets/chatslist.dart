import 'package:flutter/material.dart';
import 'package:sampark_chat_app/Config/images.dart';
import 'package:sampark_chat_app/Pages/Homepage/Widgets/chattile.dart';

class Chatslist extends StatelessWidget {
  const Chatslist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Chattile(
          imageUrl: AssetsImages.girlPic,
          name: 'SEELA KUMARI',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.boyPic,
          name: 'Hell Dev ',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.girlPic,
          name: 'SEELA KUMARI',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.boyPic,
          name: 'Hell Dev ',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.girlPic,
          name: 'SEELA KUMARI',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.boyPic,
          name: 'Hell Dev ',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.girlPic,
          name: 'SEELA KUMARI',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
        Chattile(
          imageUrl: AssetsImages.boyPic,
          name: 'Hell Dev ',
          lastChat: 'Bad me baat karte h',
          lastTime: '09:26 PM',
        ),
      ],
    );
  }
}
