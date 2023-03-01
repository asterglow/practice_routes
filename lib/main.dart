import 'package:flutter/material.dart';
import 'package:routes/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: 
      ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple[900],
        scaffoldBackgroundColor: Colors.blueGrey[200],
        ),
        
      // ThemeData(
      //   primaryColor: Colors.redAccent,
      //   scaffoldBackgroundColor: Colors.grey[100],
      //   fontFamily: 'Times New Roman'
      // ),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
} 