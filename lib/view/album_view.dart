import 'package:flutter/material.dart';
import 'package:flutter_lecture/model/albums.dart';
import 'package:flutter_lecture/bloc/album_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AlbumBloc _albumBloc = AlbumBloc();


  @override
  void initState() {
    _albumBloc.fetchAllAlbums();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test title"),
      ),
      body: StreamBuilder<Albums>(
        stream: _albumBloc.allAlbums,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            Albums? albumList = snapshot.data;
            return ListView.builder(
              itemCount: albumList?.albums.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID: ${albumList?.albums[index].id.toString()}"),
                      Text("Title: ${albumList?.albums[index].title}" )
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
