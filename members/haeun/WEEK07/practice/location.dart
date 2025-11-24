
// import 'package:geolocator/geolocator.dart'; // geolocator.dart를 그대로 사용합니다.

// class Location {
//   double? latitude;
//   double? longitude;

//   Future<void> getCurrentLocation() async {
//     try {
//       bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//       if (!serviceEnabled) {
//         print('Location services are disabled.');
//         return;
//       }

//       // 위치 권한 상태를 확인
//       LocationPermission permission = await Geolocator.checkPermission();
//       if (permission == LocationPermission.denied) {
//         permission = await Geolocator.requestPermission();
//         if (permission == LocationPermission.denied) {
//           print('Location permissions are denied');
//           return;
//         }
//       }

//       if (permission == LocationPermission.deniedForever) {
//         print(
//           'Location permissions are permanently denied, we cannot request permissions.',
//         );
//         return;
//       }

//       // 현재 위치 가져오기
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.low,
//       );

//       latitude = position.latitude;
//       longitude = position.longitude;

//       print('위치 값: $latitude(lat), $longitude(long)');
//     } catch (e) {
//       // 그 외 다른 에러가 발생한 경우 출력
//       print('위치를 가져오는 데 실패했습니다: $e');
//     }
//   }
// }
// // 