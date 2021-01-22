import 'package:facna/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:facna/router/router.dart';
void main() {
  runApp(Facna());
}

class Facna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facna',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Routers.OnGenerateRoute ,
      initialRoute: homeRoute,
    );
  }
}

// Architecture

//Presentation layer -> UI , Screens
//network layer -> logic
//routes
//widgets
