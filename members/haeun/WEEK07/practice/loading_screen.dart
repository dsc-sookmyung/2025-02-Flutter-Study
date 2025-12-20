// import 'package:flutter/material.dart';
// import 'package:clima/services//location.dart';
// import 'package:clima/services/networking.dart';
// import 'location_screen.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// const apiKey = 'd583890cccd12880394c461f00e9ea8b';

// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({super.key});

//   @override
//   _LoadingScreenState createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   double latitude = 0;
//   double longitude = 0;

//   @override
//   void initState() {
//     super.initState();
//     print('초기화 했는데?');
//     getLocationData();
//   }

//   void getLocationData() async {
//     print('getLocationData 함수 호출됨');
//     Location location = Location();

//     // 1. 위치 정보를 가져오는 작업을 시작하고, 끝날 때까지 여기서 '대기'합니다.
//     await location.getCurrentLocation();

//     // 2. 작업이 완료되면 location 객체의 latitude와 longitude에 값이 할당됩니다.
//     //    이제 그 값을 우리 State의 변수로 옮겨 담습니다.
//     latitude = location.latitude!;
//     longitude = location.longitude!;
//     print('위치 값 할당 완료: 위도($latitude), 경도($longitude)');

//     NetworkHelper networkHelper = NetworkHelper(
//       'https://clima-proxy.onrender.com/weather?lat=$latitude&lon=$longitude&units=metric',
//     );

//     var weatherData = await networkHelper.getData();

//     if (weatherData != null) {
//       double temp = weatherData['main']['temp'];
//       String cityName = weatherData['name'];
//       int condition = weatherData['weather'][0]['id'];

//       print('temp($temp), city($cityName), weatherDes($condition)');
//     } else {
//       print('날씨 데이터를 받아오지 못했습니다.');
//     }

//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) {
//           return LocationScreen(locationWeather: weatherData);
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: SpinKitDoubleBounce(color: Colors.white, size: 50.0)),
//     );
//   }
// }
