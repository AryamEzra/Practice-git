import 'package:flutter/material.dart';

class FloatingSettingsButton extends StatelessWidget {
  const FloatingSettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     // The small button positioned outside the top-right corner
    return Container(
      width: 48,
      height: 48,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(163 / 255.0), // Correct opacity
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(20), // Note the different radius
          ),
        ),
        shadows: [
          BoxShadow(color: Color(0x5B637381), blurRadius: 32, offset: Offset(-12, 12), spreadRadius: -4)
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 4, top: 4,
            child: Container(
              width: 40, height: 40,
              decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              child: Stack( // Placeholder for potential icon inside
                alignment: Alignment.center, // Center the icon if added
                children: [
                   // Positioned(left: 10, top: 10, child: Container(width: 20, height: 20, child: Stack())), // Inner empty stack likely unneeded
                   // Positioned(left: 0, top: 0, child: Container(width: 40, height: 40, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))))),
                   // TODO: Add actual Icon widget here (e.g., Icons.settings)
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}