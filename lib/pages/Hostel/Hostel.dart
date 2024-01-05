import'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('HOSTEL        ',style: GoogleFonts.varelaRound(fontSize: 25,color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
    );
  }
}