import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cupertino_popup_surface_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     ),
      home: CupertinoPopupSurfaceWidget(),
    );
  }
}
