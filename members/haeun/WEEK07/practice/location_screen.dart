// import 'package:clima/utilities/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:clima/services/weather.dart';

// class LocationScreen extends StatefulWidget {
//   const LocationScreen({this.locationWeather});

//   final locationWeather;

//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }

// class _LocationScreenState extends State<LocationScreen> {
//   WeatherModel weather = WeatherModel();
//   int temperature = 0;
//   String weatherIcon = '';
//   String weatherMessage = '';
//   int condition = 0;
//   String cityName = '';

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     updateUI(widget.locationWeather);
//   }

//   void updateUI(dynamic weatherData) {
//     setState(() {
//       double temp = weatherData['main']['temp'];
//       temperature = temp.toInt();

//       cityName = weatherData['name'];
//       condition = weatherData['weather'][0]['id'];
//       weatherIcon = weather.getWeatherIcon(condition);
//       weatherMessage = weather.getMessage(temperature);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/location_background.jpg'),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.white.withOpacity(0.8),
//               BlendMode.dstATop,
//             ),
//           ),
//         ),
//         constraints: BoxConstraints.expand(),
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: () {},
//                     child: Icon(Icons.near_me, size: 50.0),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Icon(Icons.location_city, size: 50.0),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 15.0),
//                 child: Row(
//                   children: <Widget>[
//                     Text('$temperature°', style: kTempTextStyle),
//                     Text('$weatherIcon', style: kConditionTextStyle),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(right: 15.0),
//                 child: Text(
//                   "$weatherMessage in $cityName!",
//                   textAlign: TextAlign.right,
//                   style: kMessageTextStyle,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
