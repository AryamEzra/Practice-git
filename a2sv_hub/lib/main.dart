import 'package:flutter/material.dart';

// Import the new widget files
import 'widgets/tracking/top_bar_section.dart';
import 'widgets/tracking/header_title.dart';        // Renamed for clarity
import 'widgets/tracking/filter_text.dart';         // Extracted "All" text
import 'widgets/tracking/progress_card.dart';
import 'widgets/tracking/summary_card.dart';
import 'widgets/tracking/footer_section.dart';
import 'widgets/tracking/floating_settings_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define Font Family globally if used extensively
        // fontFamily: 'Public Sans',
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ... (main and MyApp remain the same) ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // --- Keep the ORIGINAL design dimensions ---
    // We will scale this entire container down to fit the screen width.
    final double originalDesignWidth = 667.20;
    final double originalDesignHeight = 1334.40;

    return Scaffold(
      body: SingleChildScrollView( // Allows VERTICAL scrolling
        child: FittedBox( // Scales its child to fit
          fit: BoxFit.fitWidth, // << IMPORTANT: Make the child's width fit the available space
          alignment: Alignment.topCenter, // Keep alignment at the top
          child: Container( // This is your original fixed-size container
            width: originalDesignWidth,  // Use original fixed width
            height: originalDesignHeight, // Use original fixed height
            decoration: BoxDecoration(color: Colors.white),
            // Use Stack to layer everything based on the original Positioning
            // No changes needed inside the Stack IF using FittedBox
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // --- Main Content Area (positioned elements) ---
                // Footer Text - Original Positioning
                Positioned(
                   // Use original position calculation relative to originalDesignWidth
                  left: (originalDesignWidth - 271.20) / 2,
                  top: 1308.80,
                  child: FooterSection(),
                ),

                // "Tracks" Title - Original Positioning
                Positioned(
                  left: 24,
                  top: 78,
                  child: HeaderTitle(),
                ),

                // "All" Filter Text - Original Positioning
                Positioned(
                  left: 24,
                  top: 116,
                  child: FilterText(),
                ),

                // Progress Card - Original Positioning
                Positioned(
                  left: 24,
                  top: 178,
                  // Ensure ProgressCard itself still uses its original fixed width internally for now
                  child: ProgressCard(),
                ),

                // Summary Card - Original Positioning
                Positioned(
                  left: 24,
                  top: 791.25,
                  // Ensure SummaryCard itself still uses its original fixed width internally for now
                  child: SummaryCard(),
                ),

                // --- Overlays ---
                // Top Bar - Original Positioning/Size
                Positioned(
                  left: 0,
                  top: 0,
                  // Ensure TopBarSection itself still uses its original fixed width internally for now
                  child: TopBarSection(),
                ),

                // Floating Settings Button - Original Positioning
                Positioned(
                   // Use original position calculation relative to originalDesignWidth
                  left: originalDesignWidth - 48,
                  top: -24,
                  child: FloatingSettingsButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
