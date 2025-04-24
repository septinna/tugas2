import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final Function(int) onTap;
  final int selectedIndex;

  const Navbar({Key? key, required this.onTap, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 45),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          Spacer(),
          buildNavItem('Home', 0),
          SizedBox(width: 30),
          buildNavItem('Product', 1),
          SizedBox(width: 30),
          buildNavItem('About', 2),
          SizedBox(width: 30),
          buildNavItem('News', 3),
        ],
      ),
    );
  }

  Widget buildNavItem(String title, int index) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: selectedIndex == index ? Colors.blue.withOpacity(0.1) : Colors.transparent,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: selectedIndex == index ? Colors.blueAccent : Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
