import 'package:flutter/material.dart';

import 'widgets/hero_widget_2.dart';

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
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      //       .copyWith(background: Colors.orangeAccent),
      // ),
      home: Scaffold(
        body: HeroWidget2(),
      ),
    );
  }
}
