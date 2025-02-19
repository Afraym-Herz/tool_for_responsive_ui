import 'package:flutter/material.dart';
import 'package:tool_for_responsive_ui/responsive_widgets/aspect_ratio.dart';
import 'package:tool_for_responsive_ui/responsive_widgets/intrinsic_height_width.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntrinsicHeightWidth(),
    );
  }
}
