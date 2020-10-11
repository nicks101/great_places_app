import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config.dart';


class LocationHelper {
  static Future<String> generateLocationPreviewImage({
    double longitude,
    double latitude,
  }) async {
    final url =
        'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
    try {
      final response = await http.get(url);
      return json.decode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
