import 'package:flutter/material.dart';
import 'package:taller/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick And Mory',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
