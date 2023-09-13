import 'package:flutter/material.dart';
import 'dart:html' as html;

class family_members extends StatelessWidget {
  List<Map<String, String>> num = [
    {
      'image': 'assets/images/family_members/family_daughter.png',
      'first': 'Musume',
      'second': 'daghter',
      'sound': 'assets/sounds/family_members/daughter.wav'
    },
    {
      'image': 'assets/images/family_members/family_father.png',
      'first': 'Chichioya',
      'second': 'father',
      'sound': 'assets/sounds/family_members/father.wav'
    },
    {
      'image': 'assets/images/family_members/family_grandfather.png',
      'first': 'Ojisan',
      'second': 'Grand Father',
      'sound': 'assets/sounds/family_members/grand father.wav'
    },
    {
      'image': 'assets/images/family_members/family_grandmother.png',
      'first': 'Sobo',
      'second': 'Grand Mother',
      'sound': 'assets/sounds/family_members/grand mother.wav'
    },
    {
      'image': 'assets/images/family_members/family_mother.png',
      'first': 'Hahaoya',
      'second': 'mother',
      'sound': 'assets/sounds/family_members/mother.wav'
    },
    {
      'image': 'assets/images/family_members/family_older_brother.png',
      'first': 'Nisan',
      'second': 'order brother',
      'sound': 'assets/sounds/family_members/older bother.wav'
    },
    {
      'image': 'assets/images/family_members/family_older_sister.png',
      'first': 'Ane',
      'second': 'order sister',
      'sound': 'assets/sounds/family_members/older sister.wav'
    },
    {
      'image': 'assets/images/family_members/family_son.png',
      'first': 'Musuko',
      'second': 'son',
      'sound': 'assets/sounds/family_members/son.wav'
    },
    {
      'image': 'assets/images/family_members/family_younger_brother.png',
      'first': 'younger brohter',
      'second': 'wakai brow tar',
      'sound': 'assets/sounds/family_members/younger brohter.wav'
    },
    {
      'image': 'assets/images/family_members/family_younger_sister.png',
      'first': 'younger siste',
      'second': 'imoto',
      'sound': 'assets/sounds/family_members/younger sister.wav'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Family Members"),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
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
