import 'package:flutter/material.dart';

class TopBarSection extends StatelessWidget {
  const TopBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The semi-transparent bar at the very top
    return Container(
      width: 667.20, // Match parent width if it's always edge-to-edge
      height: 54,
      decoration: BoxDecoration(
        // Correct way to set opacity
        color: Colors.white.withOpacity(204 / 255.0), // Approx 80% opacity
      ),
      child: Stack(
        children: [
          // Original code used nested stacks, preserving structure
          Positioned(
            left: 0, top: 0,
            child: Container(
              width: 667.20, height: 54,
              child: Stack(
                alignment: Alignment.centerLeft, // Align items within the bar
                children: [
                  // Icon Placeholders & Avatar - Consider making IconPlaceholder widgets
                  Positioned(left: 24, top: 7, child: _buildIconPlaceholder(40, 20, isEmpty: true)), // Example: Empty icon
                  Positioned(left: 72, top: 9, child: _buildIconPlaceholder(36, 18, isEmpty: true)), // Example: Empty icon
                  // Positioned(left: 108, top: 27, child: Container(width: 391.20, height: 0.01)), // Likely a spacer/divider, maybe replace with SizedBox or Divider
                  Positioned(left: 499.20, top: 7, child: _buildIconPlaceholder(40, 20, isEmpty: true)), // Example: Empty icon
                  Positioned(left: 551.20, top: 7, child: _buildNotificationIconPlaceholder()),
                  Positioned(left: 603.20, top: 7, child: _buildAvatarPlaceholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

   // Helper for general icon placeholders (internal)
  Widget _buildIconPlaceholder(double size, double radius, {bool isEmpty = false}) {
    return Container(
      width: size, height: size,
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
      child: Stack(children: [
        // Optional: Add an actual Icon widget here if needed instead of empty stacks
        // if (!isEmpty) Positioned(left: 8, top: 8, child: Container(width: size - 16, height: size - 16, child: Stack())),
        Positioned(left: 0, top: 0, child: Container(width: size, height: size, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))))),
      ]),
    );
  }

  // Helper specific to notification icon placeholder (internal)
  Widget _buildNotificationIconPlaceholder() {
    return Container(
      width: 40, height: 40,
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Stack(clipBehavior: Clip.none, // Allow badge to overflow slightly if needed
        children: [
          // Base icon area
          Positioned(left: 10, top: 10, child: Container(width: 20, height: 20 /* child: Stack() */)), // Placeholder for actual icon
          // Base container
          Positioned(left: 0, top: 0, child: Container(width: 40, height: 40, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))))),
          // Badge
          Positioned(
            left: 20, top: 0, // Original positioning
            child: Container(
              width: 20, height: 20,
              decoration: ShapeDecoration(color: const Color(0xFFFF4842), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              child: Center( // Center the text in the badge
                 child: Text('1', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1)), // Adjusted height for better centering potentially
              ),
              // Original text positioning:
              // child: Stack(children: [Positioned(left: 7.49, top: 3.20, child: SizedBox(width: 5.32, height: 13.60, child: Text('1', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1))))]),
            ),
          ),
        ]),
    );
  }

   // Helper specific to avatar placeholder (internal)
  Widget _buildAvatarPlaceholder() {
      return Container(
          width: 40, height: 40,
          decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          child: Stack(
              children: [
                  // Image container
                  Positioned(left: 0, top: 0, child: Container(width: 40, height: 40, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), child: Stack(children: [Positioned(left: 0, top: 0, child: Container(width: 40, height: 40, clipBehavior: Clip.antiAlias, decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://placehold.co/40x40"), fit: BoxFit.fill))))]))),
                  // Status dot
                  Positioned(left: 29.40, top: 29.40, child: Container(width: 10, height: 10, decoration: ShapeDecoration(color: const Color(0xFF54D62C), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))),
                  // Base container shape (might be redundant if image container handles clip)
                 // Positioned(left: 0, top: 0, child: Container(width: 40, height: 40, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))))),
              ]
          )
      );
  }

}