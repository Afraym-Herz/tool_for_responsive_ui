import 'package:flutter/material.dart';
import 'package:tool_for_responsive_ui/layout_builder/layout_builder_class.dart';
import 'package:tool_for_responsive_ui/media_query/media_query.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutBuilderClass(),
    );
  }
}
