import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_api_vipy/settings/app_colors.dart';

class HomeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const HomeButton({
    required this.onTap,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          width: size.width * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.homeButton, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.encodeSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: AppColors.homeButton),
            ),
          ),
        ),
      ),
    );
  }
}
