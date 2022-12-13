import '../../routing_client_dart.dart';

class NearestPoint
{
  /// Distance in meters to the supplied input coordinate.
  double distance;

  ///Name of de the nearest point
  String name;

  ///Coordinates of the nearest point
  LngLat location;

  NearestPoint({
    required this.distance,
    required this.name,
    required this.location
  });

  NearestPoint.fromOSRMJson(Map point)
       :name = point['name'],
        distance = double.parse(point['distance']),
        location = LngLat(lng: double.parse(point['location'][0]),
                          lat: double.parse(point['location'][1]));
}