import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterEcommerce",
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterEcommerce"),
        ),
        body: Center(
            child: Text(
          "EcommerceApp",
        )),
      ),
    );
  }
}
