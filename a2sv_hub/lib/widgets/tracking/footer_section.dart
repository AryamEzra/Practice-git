import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Returns only the content, the parent positions it
    return Container(
      // Use SizedBox constraints if the Container itself adds no value
      width: 271.51, // Match SizedBox width for accurate centering/positioning
      height: 13.60,
      child: Text(
        'Created and maintained by Kenenisa Alemayehu.',
        textAlign: TextAlign.center,
        style: GoogleFonts.publicSans( // <-- Use the helper
          color: const Color(0xFF637381),
          fontSize: 12,
          // fontFamily: 'Public Sans', // <-- REMOVE THIS LINE
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
    
      ),
    );
  }
}