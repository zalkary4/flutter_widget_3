import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/flutter_logo_with_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     ),
      home: FlutterLogoWithText(),
    );
  }
}
