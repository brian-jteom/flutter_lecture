import 'package:flutter_lecture/data_provider/api_provider.dart';
import 'package:flutter_lecture/model/albums.dart';

class AlbumRepository {

  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();

}