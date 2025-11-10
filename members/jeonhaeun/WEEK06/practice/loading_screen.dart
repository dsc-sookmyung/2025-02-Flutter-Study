import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();

    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    if (location.latitude != null && location.longitude != null) {
      print(location.latitude);
      print(location.longitude);
    } else {
      print('위치 권한이 거부되었거나 위치 정보를 가져오지 못했습니다.');
    }

    print(location.latitude);
    print(location.longitude);
  }

  void getData() async{
    Response response = await get(
      Uri.parse(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22',
      ),
    );
    if (response.statusCode == 200) {
      String data = response.body;
    } else {
      print(response.statusCode);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
