import'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
import 'package:alvas_mangment/widgets/Card_box.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(
                  icon: Icons.access_time,
                  title: "Outing History",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
                CardBox(
                  icon: Icons.home_outlined, 
                  title: "Home history",
                  // onPressed: () => Navigator.pushNamed(context, '/marks'),
                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(
                  icon: Icons.library_books_outlined,
                  title: "Complaints",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
                // CardBox(
                //   icon: Icons.book, 
                //   title: "Home history",
                //   // onPressed: () => Navigator.pushNamed(context, '/marks'),
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}