import 'package:alvas_mangment/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.scale(
        gradient: LinearGradient(
          begin:  Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[
            Colors.white,
            Colors.white,
          ] 
        ),
        childWidget:SizedBox(
          height: 200,
          child: Image.asset('assets/logo.png'),
        ) ,
        duration:Duration(milliseconds: 1500),
        animationDuration: Duration(milliseconds: 2000),
        nextScreen: LoginPage(),
      ),
    );
  }
}