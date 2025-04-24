import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.facebook, size: 20),
          SizedBox(width: 15),
          Icon(Icons.email, size: 20),
          SizedBox(width: 15),
          Icon(Icons.link, size: 20),
        ],
      ),
    );
  }
}