import 'package:flutter/material.dart';

class PlaceholderBox extends StatelessWidget {
  final String? text;
  final double? height;
  
  const PlaceholderBox({Key? key, this.text, this.height}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: Center(
        child: text != null 
          ? Text(text!, style: TextStyle(fontSize: 12))
          : Icon(Icons.image, size: 40, color: Colors.grey[400]),
      ),
    );
  }
}