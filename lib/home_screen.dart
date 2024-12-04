import 'package:assignment_2_2/explore_button.dart';
import 'package:assignment_2_2/my_appbar.dart';
import 'package:assignment_2_2/planet_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AssetImage> planetImages = [
    AssetImage('assets/images/sun.png'),
    AssetImage('assets/images/mercury.png'),
    AssetImage('assets/images/venus.png'),
    AssetImage('assets/images/earth.png'),
    AssetImage('assets/images/mars.png'),
    AssetImage('assets/images/jupiter.png'),
    AssetImage('assets/images/saturn.png'),
    AssetImage('assets/images/uranus.png'),
    AssetImage('assets/images/neptune.png'),
  ];

  List<String> planetNames = [
    'Sun',
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune'
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          MyAppBar(
              upperText: 'Explore',
              lowerText: 'Which planet\nwould you like to explore?'),
          Expanded(child: Image(image: planetImages[index])),
          Container(
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (index == 0) {
                          index = 0;
                        } else {
                          index--;
                        }
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(side: BorderSide()),
                        backgroundColor: Color(0xffEE403D)),
                  ),
                  Expanded(child: Container()),
                  Text(
                    planetNames[index],
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (index == planetNames.length - 1) {
                          index = planetNames.length - 1;
                        } else {
                          index++;
                        }
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 25,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(side: BorderSide()),
                        backgroundColor: Color(0xffEE403D)),
                  ),
                ],
              )),
          ExploreButton(
            text: 'Explore ${planetNames[index]}',
            onClick: () {
              Navigator.pushReplacementNamed(context, PlanetDetails.routeName,
                  arguments: index);
            },
          )
        ],
      ),
    );
  }
}
