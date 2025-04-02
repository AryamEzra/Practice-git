import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This widget is still relatively large, could be broken down further
    // (e.g., into Header, ChartArea, StatsList, ActionButtons)
    return Container(
      width: 619.20,
      height: 589.25,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x1E919EAB),
            blurRadius: 24,
            offset: Offset(0, 12),
            spreadRadius: -4,
          ), // Comma was missing here
          BoxShadow(
            color: Color(0x33919EAB),
            blurRadius: 2,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          // Card Header Content (Progress title, icons, number)
          Positioned(
            left: 24,
            top: 25.50,
            child: SizedBox(
              width: 77.67, height: 28,
              child: Text('Progress', style: TextStyle(color: const Color(0xFF212B36), fontSize: 18, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.56)),
            ),
          ),
          Positioned(
            left: 505.78, top: 27.50,
            child: SizedBox(
              width: 20.74, height: 24,
              child: Text('48', style: TextStyle(color: const Color(0xFF212B36), fontSize: 16, fontFamily: 'Public Sans', fontWeight: FontWeight.w400, height: 1.50)),
            ),
          ),
          // Placeholder Icon Containers - Consider making these separate IconPlaceholder widgets
          Positioned(left: 467.77, top: 20.50, child: _buildIconPlaceholder(38, 19)),
          Positioned(left: 526.20, top: 20.50, child: _buildIconPlaceholder(38, 19)),
          Positioned(left: 564.20, top: 20, child: _buildIconPlaceholder(39, 19.5)),

          // Chart Area Placeholder
          Positioned(
            left: 0, top: 119,
            child: Container(
              width: 604, height: 222.65,
              child: Stack(
                alignment: Alignment.center, // Center chart elements
                children: [
                  // Positioned elements relative to this container
                  Positioned(
                      top: 81 - 119, // Relative top positioning needs adjustment if needed
                                      // Or use absolute positioning from Stack parent if simpler
                      child: Text('Problems', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFF637381), fontSize: 14, fontFamily: 'Inter', fontWeight: FontWeight.w700))),
                  Positioned(
                      top: 111 - 119, // Relative top
                      child: Text('225', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFF212B36), fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w700))),
                   // TODO: Add actual chart widget here
                ],
              ),
            ),
          ),

          // Stats Section (Solved / Available) - Consider making StatRow widgets
          // Solved Row
          Positioned(left: 40, top: 385.65, child: _buildColorDot(const Color(0xFF00AB55))),
          Positioned(left: 64, top: 382.65, child: SizedBox(width: 45.41, height: 22, child: Text('Solved', style: TextStyle(color: const Color(0xFF637381), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1.57)))),
          Positioned(left: 477.30, top: 381.65, child: Container(width: 101.90, height: 24, child: Stack(children: [Positioned(left: 0, top: 2.40, child: SizedBox(width: 102.26, height: 19.20, child: Text('179 Problems', style: TextStyle(color: const Color(0xFF212B36), fontSize: 16, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1.50))))]))),

          // Available Row
          Positioned(left: 40, top: 425.65, child: _buildColorDot(const Color(0x28919EAB))),
          Positioned(left: 64, top: 422.65, child: SizedBox(width: 60.73, height: 22, child: Text('Available', style: TextStyle(color: const Color(0xFF637381), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1.57)))),
          Positioned(left: 483.31, top: 421.65, child: Container(width: 95.89, height: 24, child: Stack(children: [Positioned(left: 0, top: 2.40, child: SizedBox(width: 96.24, height: 19.20, child: Text('46 Problems', style: TextStyle(color: const Color(0xFF212B36), fontSize: 16, fontFamily: 'Public Sans', fontWeight: FontWeight.w600, height: 1.50))))]))),

          // Buttons Section - Consider making separate Button widgets
          // Exercise Button
          Positioned(left: 40, top: 461.65, child: _buildExerciseButton()),
          // Problems Button
          Positioned(left: 40, top: 513.65, child: _buildProblemsButton()),
        ],
      ),
    );
  }

  // Helper for placeholder icons (internal to this widget)
  Widget _buildIconPlaceholder(double size, double radius) {
    return Container(
      width: size, height: size,
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
      child: Stack(children: [
        // Positioned(left: 8, top: 8, child: Container(width: size-16, height: size-16, child: Stack())), // Inner empty stack might not be needed
        Positioned(left: 0, top: 0, child: Container(width: size, height: size, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))))),
      ]),
    );
  }

   // Helper for colored dots
  Widget _buildColorDot(Color color) {
      return Container(
          width: 16, height: 16,
          decoration: ShapeDecoration(color: color, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      );
  }

  // Helper for Exercise Button
  Widget _buildExerciseButton() {
    return Container(
      width: 539.20, height: 36,
      decoration: ShapeDecoration(
        color: const Color(0xFF00AB55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [BoxShadow(color: Color(0x3D00AB55), blurRadius: 16, offset: Offset(0, 8), spreadRadius: 0)],
      ),
      child: Center( // Use Center for simple text alignment
        child: Text(
          'Exercise',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.71),
        ),
      ),
      // Original structure kept below if needed, but Center is simpler for text
      // child: Stack(children: [
      //   Positioned(left: 240.95, top: 9.20, child: SizedBox(width: 57.68, height: 16.80, child: Text('Exercise', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.71)))),
      //   Positioned(left: 0, top: 0, child: Container(width: 539.20, height: 36, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))))),
      // ]),
    );
  }

   // Helper for Problems Button
  Widget _buildProblemsButton() {
    return Container(
      width: 539.20, height: 35.60,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0x7F00AB55)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
       child: Center( // Use Center for simple text alignment
        child: Text(
          'Problems',
          textAlign: TextAlign.center,
          style: TextStyle(color: const Color(0xFF00AB55), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.71),
        ),
      ),
      // Original structure kept below if needed
      // child: Stack(children: [
      //   Positioned(left: 237.81, top: 9, child: SizedBox(width: 63.96, height: 16.80, child: Text('Problems', textAlign: TextAlign.center, style: TextStyle(color: const Color(0xFF00AB55), fontSize: 14, fontFamily: 'Public Sans', fontWeight: FontWeight.w700, height: 1.71)))),
      //   Positioned(left: 0.80, top: 0.80, child: Container(width: 537.60, height: 34, clipBehavior: Clip.antiAlias, decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))))),
      // ]),
    );
  }
}