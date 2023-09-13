import 'package:flutter/material.dart';
import 'dart:html' as html;

class colors_page extends StatelessWidget {
  List<Map<String, String>> num = [
    {
      'image': 'assets/images/colors/color_black.png',
      'first': 'Burakku',
      'second': 'black',
      'sound': 'assets/sounds/colors/black.wav'
    },
    {
      'image': 'assets/images/colors/color_brown.png',
      'first': 'Chairo',
      'second': 'brown',
      'sound': 'assets/sounds/colors/brown.wav'
    },
    {
      'image': 'assets/images/colors/color_dusty_yellow.png',
      'first': 'Hokorio ppoi kii',
      'second': 'dusty yellow',
      'sound': 'assets/sounds/colors/dusty yellow.wav'
    },
    {
      'image': 'assets/images/colors/color_gray.png',
      'first': 'Gure',
      'second': 'gray',
      'sound': 'assets/sounds/colors/gray.wav'
    },
    {
      'image': 'assets/images/colors/color_green.png',
      'first': 'Midori',
      'second': 'green',
      'sound': 'assets/sounds/colors/green.wav'
    },
    {
      'image': 'assets/images/colors/color_red.png',
      'first': 'Aka',
      'second': 'red',
      'sound': 'assets/sounds/colors/red.wav'
    },
    {
      'image': 'assets/images/colors/color_white.png',
      'first': 'Shirol',
      'second': 'white',
      'sound': 'assets/sounds/colors/white.wav'
    },
    {
      'image': 'assets/images/colors/yellow.png',
      'first': 'Kiiro',
      'second': 'yellow',
      'sound': 'assets/sounds/colors/yellow.wav'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Colors"),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple,
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
        ));
  }
}
