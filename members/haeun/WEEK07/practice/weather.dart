// import 'package:clima/services/location.dart';
// import 'package:clima/services/networking.dart';

// class WeatherModel {
//   Future<dynamic> getCityWeather(String cityName) async {
//     NetworkHelper networkHelper = NetworkHelper(
//       'https://clima-proxy.onrender.com/weather?q=$cityName',
//     );

//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }

//   Future<dynamic> getLocationWeather() async {
//     Location location = Location();
//     await location.getCurrentLocation();

//     NetworkHelper networkHelper = NetworkHelper(
//       'https://clima-proxy.onrender.com/weather?lat=${location.latitude}&lon=${location.longitude}',
//     );

//     var weatherData = await networkHelper.getData();
//     return weatherData;
//   }

//   String getWeatherIcon(int condition) {
//     if (condition < 300) {
//       return '🌩';
//     } else if (condition < 400) {
//       return '🌧';
//     } else if (condition < 600) {
//       return '☔️';
//     } else if (condition < 700) {
//       return '☃️';
//     } else if (condition < 800) {
//       return '🌫';
//     } else if (condition == 800) {
//       return '☀️';
//     } else if (condition <= 804) {
//       return '☁️';
//     } else {
//       return '🤷‍';
//     }
//   }

//   String getMessage(int temp) {
//     if (temp > 25) {
//       return 'It\'s 🍦 time';
//     } else if (temp > 20) {
//       return 'Time for shorts and 👕';
//     } else if (temp < 10) {
//       return 'You\'ll need 🧣 and 🧤';
//     } else {
//       return 'Bring a 🧥 just in case';
//     }
//   }
// }
