import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeButton extends StatelessWidget {
  final Color color;
  final String type;

  const TypeButton({
    required this.color,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16),
      width: size.width * 0.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        type,
        style: GoogleFonts.encodeSans(
            fontSize: 14, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}
