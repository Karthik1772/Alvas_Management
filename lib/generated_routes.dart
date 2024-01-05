import 'package:alvas_mangment/pages/Academics/Academics.dart';
import 'package:alvas_mangment/pages/Academics/Marks/Ia_page/Ia_marks.dart';
import 'package:alvas_mangment/pages/Academics/Marks/Marks_page.dart';
import 'package:alvas_mangment/pages/Academics/Marks/Sem_page/Sem_marks.dart';
import 'package:alvas_mangment/pages/homepage.dart';
import 'package:alvas_mangment/pages/Hostel/Hostel.dart';
import 'package:alvas_mangment/pages/Library/library.dart';
import 'package:alvas_mangment/pages/Clubs/Clubs.dart';

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
        case '/marks':
        return MaterialPageRoute(
          builder: (context) =>  Marks()
        );
        case '/ia':
        return MaterialPageRoute(
          builder: (context) =>  Ia_marks()
        );
        case '/sem':
        return MaterialPageRoute(
          builder: (context) =>  Sem_marks()
        );
        case '/clubs':
        return MaterialPageRoute(
          builder: (context) => const ClubPage()
        );
        case '/library':
        return MaterialPageRoute(
          builder: (context) => const LibraryPage()
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
