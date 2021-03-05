import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('initState called.');
    getLocation();
  }

  void getLocation() async {
    //Get the current location
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude ?? 0.0); // Null aware operator
    print(location.latitude ?? 0.0); // Null aware operator
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('Deactive called.');
  }
}
