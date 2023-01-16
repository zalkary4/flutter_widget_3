import 'package:flutter/material.dart';
import 'package:flutter_application_1/interaktive-view_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InteraktiveViewWidget(),
      ),
    );
  }
}
