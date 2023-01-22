import 'package:flutter/material.dart';

class MouseRegionWidget extends StatefulWidget {
  const MouseRegionWidget({Key? key}) : super(key: key);

  @override
  _MouseRegionWidgetState createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  int enterCount = 0;
  int exitCount = 0;
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (PointerEvent details) {
          setState(() {
            enterCount++;
          });
        },
        onHover: (PointerEvent details) {
          setState(() {
            x = details.position.dx;
            y = details.position.dy;
          });
        },
      ),
    );
  }
}
