import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            padding: EdgeInsets.only(left: 18, right: 27, top: 18, bottom: 18),
            decoration: BoxDecoration(
              color: Color(0xff0601B4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.25),
                  blurRadius: 4,
                  spreadRadius: 1.0,
                  offset: Offset(0, 4)
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 57,
                      height: 57,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Image.asset('assets/images/avatar.png')
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Itunuoluwa Abidoye',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '@Itunuoluwa',
                          style: TextStyle(
                            color: Color(0xffD7D7D7),
                            fontSize: 12,
                            fontWeight: FontWeight.normal
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/edit.svg',
                  width: 24,
                  height: 24,
                )
              ],
            ),
          )
        ],
      ),
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