import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  List<ImageModel> images = [];
  int counter = 0;

  void fetchImage() async{
    counter++;
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final ImageModel im = ImageModel.fromJSON(json.decode(response.body));
    setState((){
      images.add(im);
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Let's see some images!"),
            centerTitle: false,
          ),
          body: ImageList(images),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,size: 40),
            onPressed: fetchImage,
          ),
        )
    );
  }
}