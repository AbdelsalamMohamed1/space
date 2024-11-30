import 'package:flutter/material.dart';

class ExploreButton extends StatelessWidget {
  String text;
  String nextPage;

  ExploreButton({required this.text, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, nextPage);
          },
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_forward_rounded,
                size: 25,
                color: Colors.white,
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffEE403D), padding: EdgeInsets.all(15))),
    );
  }
}
