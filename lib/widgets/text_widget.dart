import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final TextAlign? align;
  final FontWeight weight;

  const TextWidget({
    super.key,
    required this.text,
    required this.color,
    this.align,
    required this.weight,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: size,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}
