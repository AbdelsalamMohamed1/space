import 'package:assignment_2_2/explore_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Image(
            image: AssetImage('assets/images/LoginBackground.png'),
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Container()),
              Text(
                'Explore\nThe\nUniverse',
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              ExploreButton(
                text: 'Explore',
                nextPage: '',
              )
            ],
          ),
        ],
      ),
    );
  }
}
