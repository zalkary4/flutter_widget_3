import 'package:flutter/material.dart';

class FlutterLogoWithText extends StatefulWidget {
  const FlutterLogoWithText({Key? key}) : super(key: key);

  @override
  _FlutterLogoWithTextState createState() => _FlutterLogoWithTextState();
}

class _FlutterLogoWithTextState extends State<FlutterLogoWithText> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 210,
          style: FlutterLogoStyle.stacked,
          textColor: Colors.orange,
        ),
      ),
    );
  }
}
