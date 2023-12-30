import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Buttons extends StatefulWidget {
  final Color colors;
  final String font;
  final Color fontColor;
  final VoidCallback onpressed;
  const Buttons({
    super.key,
    required this.colors,
    required this.font,
    required this.fontColor,
    required this.onpressed
    });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(onPressed: widget.onpressed,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10)
              ),
            )
          ),
          backgroundColor: MaterialStatePropertyAll(widget.colors),
        ), 
        child: Text(widget.font,
        style: GoogleFonts.varelaRound(
          color:widget.fontColor,fontWeight: FontWeight.bold,fontSize: 20),
        )
      ),
    );
  }
}