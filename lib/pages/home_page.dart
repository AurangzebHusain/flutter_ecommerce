import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Function darkModeHandler;

  HomePage(@required this.darkModeHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Column(children: [
        Text(
          "Welcome to 30 Days of Dart",
        ),
      ]),
      drawer: Drawer(
          child: Column(

            mainAxisAlignment:MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () => {darkModeHandler()},
              child: Text("Dark Mode")),
          TextButton(onPressed: null, child: Text("Login"))
        ],
      )),
    );
  }
}
