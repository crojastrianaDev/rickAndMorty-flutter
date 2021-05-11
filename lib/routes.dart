import 'package:flutter/material.dart';

import 'package:taller/login.dart';
import 'package:taller/register.dart';
import 'package:taller/home.dart';
import 'package:taller/description.dart';
import 'package:taller/updateUser.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    final args = setting.arguments;
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/description/id':
        return MaterialPageRoute(builder: (_) => DescriptionPage());
      case '/update/id':
        return MaterialPageRoute(builder: (_) => UpdateUser());
    }
  }
}
