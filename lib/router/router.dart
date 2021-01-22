import 'package:facna/presentation/Opportunities/opportunities_pages.dart';
import 'package:facna/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:facna/presentation/not_found/not_found_page.dart';
import 'package:facna/presentation/home/home_page.dart';
import 'package:facna/presentation/auth/sign_in_page.dart';
import 'package:facna/presentation/auth/sign_Up_page.dart';

class Routers {
  static Route<dynamic> OnGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case opportunitiesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
