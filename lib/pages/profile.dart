import'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PROFILE        ',style: GoogleFonts.varelaRound(fontSize: 25,color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
    );
  }
}