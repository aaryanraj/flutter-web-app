import 'package:flutter/material.dart';
import 'package:flutter_web/main.dart';
import 'package:flutter_web/routing/routes.dart';
import 'package:flutter_web/screens/home_page.dart';
import 'package:flutter_web/screens/login.dart';
import 'package:flutter_web/screens/signUp.dart';
import 'package:flutter_web/screens/contact.dart';
import 'package:flutter_web/screens/about.dart';
import 'package:flutter_web/screens/books.dart';
import 'package:flutter_web/screens/search.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (context) => HomePage(), settings: settings);
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (context) => Login(), settings: settings);
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (context) => SignUp(), settings: settings);
      case RoutesName.contact:
        return MaterialPageRoute(
            builder: (context) => Contact(), settings: settings);
      case RoutesName.about:
        return MaterialPageRoute(
            builder: (context) => About(), settings: settings);
      case RoutesName.books:
        return MaterialPageRoute(
            builder: (context) => Books(), settings: settings);
      case RoutesName.search:
        return MaterialPageRoute(
            builder: (context) => Search(), settings: settings);

      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.
      //return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
