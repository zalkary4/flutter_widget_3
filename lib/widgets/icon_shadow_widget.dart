import 'package:flutter/material.dart';

class IconShadowWidget extends StatefulWidget {
  const IconShadowWidget({Key? key}) : super(key: key);

  @override
  _IconShadowWidgetState createState() => _IconShadowWidgetState();
}

class _IconShadowWidgetState extends State<IconShadowWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.flutter_dash,
        size: 200,
        shadows: [
          BoxShadow(
            color: Color.fromARGB(255, 19, 124, 156),
            offset: Offset(8, 8),
            spreadRadius: 10,
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
