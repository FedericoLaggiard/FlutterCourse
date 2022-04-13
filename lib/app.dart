import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;

  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Let's see some images!"),
            centerTitle: false,
          ),
          body: Text('$counter '),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,size: 40),
            onPressed: (){
                setState(() {
                counter += 1;
              });
            },
          ),
        )
    );
  }
}