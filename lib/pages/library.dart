import'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('LIBRARY        ',style: GoogleFonts.varelaRound(fontSize: 25,color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
    );
  }
}