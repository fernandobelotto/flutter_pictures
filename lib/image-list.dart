import 'package:flutter/material.dart';
import 'package:flutter_pictures/image.model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList({required this.images});

  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: imageBuild,
      itemCount: images.length,
    );
  }

  Widget imageBuild(context, int index) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image.network(images[index].url),
        Text(images[index].title)
      ]),
    );
  }
}
