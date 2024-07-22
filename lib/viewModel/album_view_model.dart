
import 'package:flutter/cupertino.dart';
import 'package:flutter_lecture/repository/album_datasource_repository.dart';

import '../model/album.dart';

class AlbumViewModel with ChangeNotifier {
  late final AlbumDatasourceRepository _albumRepository;
  List<Album> _albumList = List.empty(growable: true);
  List<Album> get albumList => _albumList;



  AlbumViewModel() {
    _albumRepository = AlbumDatasourceRepository();
    _getAlbumList();
  }

  Future<void> _getAlbumList() async{
    _albumList = await _albumRepository.getAlbumList();
    notifyListeners();
  }

}