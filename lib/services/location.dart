import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Location({this.longitude, this.latitude});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      //print(position);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
      longitude = 32;
      latitude = 127;
    }
  }
}
