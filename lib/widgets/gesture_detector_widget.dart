import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({Key? key}) : super(key: key);

  @override
  _GestureDetectorWidgetState createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orange,
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
