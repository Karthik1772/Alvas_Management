import 'package:alvas_mangment/pages/Academics.dart';
import 'package:alvas_mangment/pages/homepage.dart';
import 'package:alvas_mangment/pages/hostel.dart';
import 'package:alvas_mangment/pages/library.dart';
import 'package:alvas_mangment/pages/profile.dart';

import 'pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'pages/registerpage.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (context) => const RegisterPage()
        );
        case '/homepage':
        return MaterialPageRoute(
          builder: (context) => const HomePage()
        );
        case '/academics':
        return MaterialPageRoute(
          builder: (context) => const Academics()
        );
        case '/profile':
        return MaterialPageRoute(
          builder: (context) => const Profile()
        );
        case '/library':
        return MaterialPageRoute(
          builder: (context) => const Library()
        );
        case '/hostel':
        return MaterialPageRoute(
          builder: (context) => const Hostel()
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
    }
  }
}
