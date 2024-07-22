

import 'package:flutter_lecture/datasource/datasource.dart';

import '../model/album.dart';

class AlbumDatasourceRepository {
  final Datasource _datasource = Datasource();


  Future<List<Album>> getAlbumList() {
    return _datasource.getAlbumList();
  }
}