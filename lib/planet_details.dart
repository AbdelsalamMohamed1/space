import 'package:assignment_2_2/home_screen.dart';
import 'package:assignment_2_2/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:assignment_2_2/planet_model.dart';

class PlanetDetails extends StatelessWidget {
  static String routeName = 'planetDetails';

  @override
  Widget build(BuildContext context) {
    int index =
        int.parse(ModalRoute.of(context)!.settings.arguments.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MyAppBar(
              upperText: planetModel.planetNames[index],
              lowerText: planetModel.title[index],
              stepBackButton: true,
              nextPage: HomeScreen.routeName,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3D model',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('About',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text(planetModel.about[index],
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Distance from Sun (km) :${planetModel.distanceFromTheSun[index]}\n'
                    'Length of Day (hours) :${planetModel.lengthOfDay[index]}\n'
                    'Orbital Period (Earth years) :${planetModel.orbitalPeriod[index]}\n'
                    'Radius (km) :${planetModel.radius[index]}\n'
                    'Mass (kg) :${planetModel.mass[index]}\n'
                    'Gravity (m/s²) :${planetModel.gravity[index]}\n'
                    'Surface Area (km²) :${planetModel.surfaceArea[index]}',
                    style: TextStyle(
                        fontSize: 16, color: Colors.white, height: 1.8),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
