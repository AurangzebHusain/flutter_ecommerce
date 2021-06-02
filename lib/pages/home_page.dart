import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/routes.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () => {darkModeHandler()}, child: Text("Dark Mode")),
          TextButton(onPressed: ()=>{
            Navigator.pushNamed(context, MyRoutes.loginRoute)
          }, child: Text("Login"))
        ],
      )),
    );
  }
}
