import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CardBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  const CardBox({super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 170,
      child: Card(
        elevation: 10,
        surfaceTintColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              weight: 10,
              size: 80,
            ),
            Text(
              title,
              style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
