import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: const Color.fromARGB(66, 0, 0, 0),
          thickness: 5,
          indent: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
          endIndent: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
        ),
        Container(
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
        ),
      ],
    );
  }
}
