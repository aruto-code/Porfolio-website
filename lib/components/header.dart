import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Arushee tomar',
            style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'Student at ZHCET',
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
