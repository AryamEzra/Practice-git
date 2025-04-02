import 'package:flutter/material.dart';

class FilterText extends StatelessWidget {
  const FilterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The "All" filter text part
    return Container(
      width: 18.23, // Original Container width
      height: 22,   // Original Container height
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(), // Can likely be removed if empty
      child: Stack( // Original had a Stack, keeping structure
        children: [
          Positioned(
            left: 0,
            top: 2.40,
            child: SizedBox(
              width: 18.54, // Original SizedBox width
              height: 16.80, // Original SizedBox height
              child: Text(
                'All',
                style: TextStyle(
                  color: const Color(0xFF919EAB),
                  fontSize: 14,
                  fontFamily: 'Public Sans', // Ensure font is added
                  fontWeight: FontWeight.w400,
                  height: 1.57,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}