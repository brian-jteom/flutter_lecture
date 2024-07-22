import 'package:flutter/material.dart';
import 'package:flutter_lecture/model/albums.dart';
import 'package:flutter_lecture/bloc/album_bloc.dart';
import 'package:flutter_lecture/viewModel/album_view_model.dart';
import 'package:provider/provider.dart';

import '../model/album.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Album> albumList;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AlbumViewModel>(
        create: ((context) => AlbumViewModel()),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("test title"),
          ),
          body: Consumer<AlbumViewModel>(
            builder: (context, provider, child) {
                albumList = provider.albumList;
                return ListView.builder(
                  itemCount: albumList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ID: ${albumList[index].id.toString()}"),
                          Text("Title: ${albumList[index].title}" )
                        ],
                      ),
                    );
                  }
                );
              },
          ),
        ),
    );
  }
}
