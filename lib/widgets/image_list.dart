import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images, {Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      }
    );
  }

  Widget buildImage(ImageModel im) {
    return Container(
        margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0,0.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: <Widget>[
            Image.network(im.url!),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(im.title!),
            ),
          ],
        )
    );
  }
}