import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitute;
  final double longitute;
  final String address;

  PlaceLocation({
    this.address,
    @required this.latitute,
    @required this.longitute,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id,
    @required this.image,
    @required this.location,
    @required this.title,
  });
}
