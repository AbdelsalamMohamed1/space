import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  bool stepBackButton;
  String upperText;
  String nextPage;
  String lowerText;

  MyAppBar({
    required this.upperText,
    required this.lowerText,
    this.stepBackButton = false,
    this.nextPage = '',
  });

  @override
  Widget build(BuildContext context) {
    if (stepBackButton) {
      return Stack(
        children: [
          Image(image: AssetImage('assets/images/HomeBackground.png')),
          Container(
            height: 550,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Color(0x000e0e0e),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, nextPage);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEE403D),
                          shape: CircleBorder(side: BorderSide())),
                    ),
                    Expanded(child: Container()),
                    Text(
                      upperText,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(lowerText,
                        style: TextStyle(fontSize: 24, color: Colors.white))
                  ],
                )
              ],
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          Image(image: AssetImage('assets/images/HomeBackground.png')),
          Container(
            height: 550,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Color(0x000e0e0e),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      upperText,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(lowerText,
                        style: TextStyle(fontSize: 24, color: Colors.white))
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }
  }
}
