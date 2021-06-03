import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;

  void turnDarkMode() {
    this.setState(() {
      darkMode = !darkMode;
    });
    // return darkMode;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FlutterEcommerce",
        themeMode: this.darkMode ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          '/': (content) => HomePage(turnDarkMode),
          MyRoutes.homeRoute: (content) => HomePage(turnDarkMode),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
