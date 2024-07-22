import 'package:flutter/material.dart';
import 'package:flutter_lecture/locator/locator.dart';
import 'package:flutter_lecture/model/albums.dart';
import 'package:flutter_lecture/bloc/album_bloc.dart';
import 'package:flutter_lecture/service/album_service.dart';

import '../model/album.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AlbumService _service = locator<AlbumService>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test title"),
      ),
      body: FutureBuilder(
        future: _service.fetchAlbums(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            List<Album>? list = snapshot.data;
            return ListView.builder(
                itemCount: list?.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ID: ${list?[index].id.toString()}"),
                        Text("Title: ${list?[index].title}" )
                      ],
                    ),
                  );
                }
            );
          } else if(snapshot.hasError){
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          }
        },
      ),
    );
  }
}
