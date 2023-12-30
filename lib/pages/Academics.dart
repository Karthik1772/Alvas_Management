import'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
class Academics extends StatefulWidget {
  const Academics({super.key});

  @override
  State<Academics> createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ACADEMICS        ',style: GoogleFonts.varelaRound(fontSize: 25,color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
    );
  }
}