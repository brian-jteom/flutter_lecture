import 'dart:convert';

import '../model/album.dart';
import 'package:http/http.dart' as http;

abstract class AlbumService {
  Future<List<Album>> fetchAlbums();
}


class AlbumServiceImplementation implements AlbumService {
  @override
  Future<List<Album>> fetchAlbums() async {
    final reponse = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums")
    );
    final List<Album> result = jsonDecode(reponse.body)
        .map<Album>((json) => Album.fromJson(json))
        .toList();

    return result;
  }
  
}