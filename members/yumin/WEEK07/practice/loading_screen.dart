import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';

const apiKey='07570fab9fa023cf27f76e9ca29f238b';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;
  
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {


    await getLocationData();
  }
  
  Future<void> getLocationData() async{
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blue,
          size: 100.0,
        ),
      ),
    );
  }
}