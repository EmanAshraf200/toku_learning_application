import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text("TOKU"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'numberpage');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Numbers",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              color: Colors.orange,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'familypage');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "FamilyMembers",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              color: Colors.green,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'colorpage');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Colors",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              color: Colors.purple,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'phrasespage');
            },
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Phrases",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
