import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerJudul extends StatelessWidget {
  const ContainerJudul({
    Key? key,
    required this.size,
    required this.text,
    required this.warna,
  }) : super(key: key);

  final Size size;
  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: warna,
          ),
        ),
      ),
    );
  }
}
