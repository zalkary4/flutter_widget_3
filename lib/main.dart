import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/indexed_stack_widget1.dart';

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
        body: IndexedStackWidget1(),
      ),
    );
  }
}
