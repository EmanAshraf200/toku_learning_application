import 'package:flutter/material.dart';
import 'dart:html' as html;

class phrases_page extends StatelessWidget {
  List<Map<String, String>> num = [
    {
      'first': 'rai masu ka',
      'second': 'are you coming?',
      'sound': 'assets/sounds/phrases/are_you_coming.wav'
    },
    {
      'first': 'koudoku suru koto wa wasure nai de kudasai',
      'second': 'dont forget to subscribe',
      'sound': 'assets/sounds/phrases/dont_forget_to_subscribe.wav'
    },
    {
      'first': 'choushi wa dou desu ka ',
      'second': 'how are you feeling ?',
      'sound': 'assets/sounds/phrases/how_are_you_feeling.wav'
    },
    {
      'first': 'anime ga daisuk',
      'second': 'i love anime',
      'sound': 'assets/sounds/phrases/i_love_anime.wav'
    },
    {
      'first': 'watashi wa programming ga daisuk desu',
      'second': 'i love programming',
      'sound': 'assets/sounds/phrases/i_love_programming.wav'
    },
    {
      'first': 'programming wa kantan',
      'second': 'programming is easy',
      'sound': 'assets/sounds/phrases/programming_is_easy.wav'
    },
    {
      'first': 'anata no namae wa nani desu ka',
      'second': 'what is your name ?',
      'sound': 'assets/sounds/phrases/what_is_your_name.wav'
    },
    {
      'first': 'doko ni iki masu ka',
      'second': 'where are you going',
      'sound': 'assets/sounds/phrases/where_are_you_going.wav'
    },
    {
      'first': 'watashi wa rai masu ka',
      'second': 'yes Iam coming',
      'sound': 'assets/sounds/phrases/yes_im_coming.wav'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Phrases"),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: ListTile(
                  title: Text(
                    num[index]['first']!,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  subtitle: Text(num[index]['second']!,
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      html.AudioElement audio = html.AudioElement();
                      audio.src = num[index]['sound']!;
                      audio.play();
                    },
                  ),
                  onTap: () {}),
            );
          },
        ));
  }
}
