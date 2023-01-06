import 'package:flutter/material.dart';

import 'widgets/default_text_widget.dart';

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
      home: DefaultTextWidget(),
    );
  }
}
