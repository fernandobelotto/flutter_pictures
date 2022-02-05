import 'package:flutter/material.dart';
import 'package:flutter_pictures/image.model.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

import 'image-list.dart';

class App extends StatefulWidget {
  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imageList = [];

  void fetchData() async {
    final res =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));

    final image = ImageModel.fromJson(json.decode(res.body));
    setState(() {
      imageList.add(image);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images: imageList),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchData,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Lets see images'),
        ),
      ),
    );
  }
}
