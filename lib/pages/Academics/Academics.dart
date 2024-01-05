import 'package:alvas_mangment/widgets/Card_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Academics extends StatefulWidget {
  const Academics({super.key});

  @override
  State<Academics> createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Academics',
            style: GoogleFonts.varelaRound(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context,'/homepage'),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(
                  icon: Icons.person,
                  title: "Attendance",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
                CardBox(
                  icon: Icons.book, 
                  title: "Marks",
                  onPressed: () => Navigator.pushNamed(context, '/marks'),
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
                  icon: Icons.library_books, 
                  title: "Syllabus",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
                  CardBox(
                  icon: Icons.calendar_month_outlined, 
                  title: "Assigments",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
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
                  icon: Icons.people_outline, 
                  title: "Mentorship",
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
                CardBox(
                  icon: Icons.calculate_outlined, 
                  title: 'CGPA Calculator',
                  // onPressed: () => Navigator.pushNamed(context, routeName),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
