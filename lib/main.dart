import 'package:assignment_2_2/home_screen.dart';
import 'package:assignment_2_2/login_screen.dart';
import 'package:assignment_2_2/planet_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetails.routeName: (context) => PlanetDetails(),
      },
    );
  }
}
