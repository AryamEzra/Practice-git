import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     // This widget shows the 80%/20% summary breakdown
    return Container(
      width: 619.20,
      height: 169,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        shadows: [
          BoxShadow(color: Color(0x1E919EAB), blurRadius: 24, offset: Offset(0, 12), spreadRadius: -4), // Comma was missing
          BoxShadow(color: Color(0x33919EAB), blurRadius: 2, offset: Offset(0, 0), spreadRadius: 0)
        ],
      ),
      child: Stack(
        children: [
          // 80% Section (Left) - Consider making a PercentageStat widget
          Positioned(left: 67.36, top: 40, child: _buildPercentagePlaceholder('80%')),
          Positioned(left: 197.36, top: 56.50, child: SizedBox(width: 34.37, height: 30, child: Text('179', style: TextStyle(color: const Color(0xFF212B36), fontSize: 20, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.50)))),
          Positioned(left: 197.36, top: 90.50, child: SizedBox(width: 44.80, height: 22, child: Opacity(opacity: 0.72, child: Text('Solved', style: TextStyle(color: const Color(0xFF212B36), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w400, height: 1.57))))),

          // 20% Section (Right)
          Positioned(left: 369.90, top: 40, child: _buildPercentagePlaceholder('20%')),
          Positioned(left: 499.90, top: 56.50, child: SizedBox(width: 26.70, height: 30, child: Text('46', style: TextStyle(color: const Color(0xFF212B36), fontSize: 20, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.50)))),
          Positioned(left: 499.90, top: 90.50, child: SizedBox(width: 59.77, height: 22, child: Opacity(opacity: 0.72, child: Text('Available', style: TextStyle(color: const Color(0xFF212B36), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w400, height: 1.57))))),
        ],
      ),
    );
  }

  // Helper for the percentage circle placeholder (internal)
  Widget _buildPercentagePlaceholder(String percentage) {
     return Container(
      width: 106, height: 89, // Original dimensions
      // TODO: Replace with actual chart/drawing for percentage circle
      child: Center( // Simplified placeholder
        child: Text(
            percentage,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter( // <-- Use the Inter helper
    color: const Color(0xFF212B36),
    fontSize: 14,
    // fontFamily: 'Inter', // <-- REMOVE THIS LINE
    fontWeight: FontWeight.w700,
),
        ),
      ),
      // Original structure kept if precise positioning inside is needed
      // child: Stack(children: [
      //   Positioned(left: 37.50, top: 36, child: Text(percentage, textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFF212B36), fontSize: 14, fontFamily: 'Inter', fontWeight: FontWeight.w700))),
      // ]),
    );
  }
}