import 'package:alvas_mangment/generated_routes.dart';
import 'package:alvas_mangment/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerate,
      initialRoute: '/splash',
    );
  }
}