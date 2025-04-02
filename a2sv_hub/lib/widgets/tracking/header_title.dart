import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Just the "Tracks" title
    return SizedBox(
      width: 64.39, // Original SizedBox width
      height: 30,   // Original SizedBox height
      child: Text(
        'Tracks',
        style: TextStyle(
          color: const Color(0xFF212B36),
          fontSize: 20,
          fontFamily: 'Public Sans', // Ensure font is added
          fontWeight: FontWeight.w700,
          height: 1.50,
        ),
      ),
    );
  }
}