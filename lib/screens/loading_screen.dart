import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getCurrentLocation() async {
    //Get the current location
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  void initState() {
    super.initState();
    print('initState called.');

    //Get the current location
    getCurrentLocation();
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
