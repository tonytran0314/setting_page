import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xffF7F7F7),
      title: Text(
        'Profile',
        style: TextStyle(
          color: Color(0xff181D27),
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}