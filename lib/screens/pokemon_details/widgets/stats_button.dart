import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_api_vipy/settings/app_colors.dart';

class StatsButton extends StatelessWidget {
  final String title;
  final String value;

  StatsButton({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      width: size.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.encodeSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkerGray),
            ),
            SizedBox(height: 2),
            Text(
              value,
              style: GoogleFonts.encodeSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
