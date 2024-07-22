
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_lecture/model/album.dart';

class Datasource {

  Future<List<Album>> getAlbumList() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));

    return jsonDecode(response.body)
        .map<Album>((json) => Album.fromJson(json))
        .toList();
  }

}