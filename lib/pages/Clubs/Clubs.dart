import 'package:alvas_mangment/widgets/Card_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Clubs",
            style: GoogleFonts.varelaRound(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context,'/homepage'),
          ),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardBox(
                  title: "Activities",
                  icon: Icons.paste_rounded,
                ),
                CardBox(
                  title: "Events",
                  icon: Icons.calendar_month,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardBox(
                  title: "Notification",
                  icon: Icons.notifications_active,
                ),
                CardBox(
                  title: "Achivements",
                  icon: Icons.privacy_tip_rounded,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
