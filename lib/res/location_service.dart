// import 'package:geolocator/geolocator.dart';
// import 'package:geocoding/geocoding.dart';
//
// class LocationService {
//   Future<Position> getCurrentPosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       await Geolocator.openAppSettings();
//       return Future.error('Location services are disabled.');
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error('Location permissions are permanently denied, we cannot request permissions.');
//     }
//     return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//   }
//
//   Future<Placemark> getPlacemarkFromLatLng(double latitude, double longitude) async {
//     List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
//     Placemark place = placemarks[0];
//     return place;
//   }
//
//   Stream<Position> getPositionStream(){
//      LocationSettings locationSettings =  const LocationSettings(
//       accuracy: LocationAccuracy.high,
//       distanceFilter: 100,
//     );
//     return Geolocator.getPositionStream(locationSettings: locationSettings);
//   }
// }
