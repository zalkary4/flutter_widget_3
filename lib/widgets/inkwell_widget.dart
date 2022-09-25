import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({Key? key}) : super(key: key);

  @override
  _InkwellWidgetState createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          child: Ink(
            height: 200,
            width: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
