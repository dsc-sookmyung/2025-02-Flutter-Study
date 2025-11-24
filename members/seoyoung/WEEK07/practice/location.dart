import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      print("📍 위치 요청 시작");

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      ).timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          throw "⛔ GPS provider 응답 없음";
        },
      );

      print("📌 위치 가져오기 성공: ${position.latitude}, ${position.longitude}");

      latitude = position.latitude;
      longitude = position.longitude;

    } catch (e) {
      print("❌ 위치 가져오기 실패: $e");
    }
  }
}
