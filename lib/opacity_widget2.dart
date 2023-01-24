import 'package:flutter/material.dart';

class OpacityWidget2 extends StatefulWidget {
  const OpacityWidget2({Key? key}) : super(key: key);

  @override
  _OpacityWidget2State createState() => _OpacityWidget2State();
}

class _OpacityWidget2State extends State<OpacityWidget2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: const Text('Flutter Mapp'),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: const Text('Flutter Mapp'),
          ),
        ),
        Opacity(
          opacity: 0.1,
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: const Text('Flutter Mapp'),
          ),
        ),
      ],
    );
  }
}
