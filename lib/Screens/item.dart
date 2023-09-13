import 'package:flutter/material.dart';

class item extends StatelessWidget {
  String image;
  String first;
  String second;
  item(this.image, this.first, this.second);

  @override
  Widget build(BuildContext context) {
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
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          first,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        subtitle:
            Text(second, style: TextStyle(color: Colors.white, fontSize: 15)),
        trailing: Icon(
          Icons.play_arrow,
          size: 20,
          color: Colors.white,
        ),
        onTap: () {
          // Action to perform when the ListTile is tapped
        },
      ),
    );
  }
}
