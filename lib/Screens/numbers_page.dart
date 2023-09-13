import 'package:flutter/material.dart';
import 'package:toku/Screens/item.dart';

import 'dart:html' as html;

class numbers_page extends StatelessWidget {
  List<Map<String, String>> num = [
    {
      'image': 'assets/images/numbers/number_one.png',
      'first': 'ichi',
      'second': 'one',
      'sound': 'assets/sounds/numbers/number_one_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_two.png',
      'first': 'Ni',
      'second': 'two',
      'sound': 'assets/sounds/numbers/number_two_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_three.png',
      'first': 'San',
      'second': 'three',
      'sound': 'assets/sounds/numbers/number_three_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_four.png',
      'first': 'Shi',
      'second': 'four',
      'sound': 'assets/sounds/numbers/number_four_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_five.png',
      'first': 'Go',
      'second': 'five',
      'sound': 'assets/sounds/numbers/number_five_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_six.png',
      'first': 'Roku',
      'second': 'six',
      'sound': 'assets/sounds/numbers/number_six_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_seven.png',
      'first': 'Sebun',
      'second': 'seven',
      'sound': 'assets/sounds/numbers/number_seven_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_eight.png',
      'first': 'Hachi',
      'second': 'eight',
      'sound': 'assets/sounds/numbers/number_eight_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_nine.png',
      'first': 'KyU',
      'second': 'nine',
      'sound': 'assets/sounds/numbers/number_nine_sound.mp3'
    },
    {
      'image': 'assets/images/numbers/number_ten.png',
      'first': 'Ju',
      'second': 'ten',
      'sound': 'assets/sounds/numbers/number_ten_sound.mp3'
    },
  ];
  // void playSound() {
  //   html.AudioElement audio = html.AudioElement();
  //   audio.src = 'assets/sounds/numbers/number_eight_sound.mp3';
  //   audio.play();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Numbers"),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.orange,
              child: ListTile(
                  leading: Container(
                    width: 65,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(num[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
        )
        // Column(
        //   children: [
        //     item('assets/images/numbers/number_one.png', 'ichi', 'one'),
        //     item('assets/images/numbers/number_two.png', 'Ni', 'two'),
        //     item('assets/images/numbers/number_three.png', 'San', 'three'),
        //     item('assets/images/numbers/number_four.png', 'Shi', 'four'),
        //     item('assets/images/numbers/number_five.png', 'Go', 'five'),
        //     item('assets/images/numbers/number_six.png', 'Roku', 'six'),
        //     item('assets/images/numbers/number_seven.png', 'Sebun', 'seven'),
        //     item('assets/images/numbers/number_eight.png', 'Hachi', 'eight'),
        //     item('assets/images/numbers/number_nine.png', 'KyU', 'nine'),
        //     item('assets/images/numbers/number_ten.png', 'Ju', 'ten'),
        //   ],
        // )
        );
  }
}
