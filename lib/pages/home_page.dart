import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:flutter_ecommerce/widgets/drawer.dart';

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
      drawer: MyDrawer(darkModeHandler),
    );
  }
}
