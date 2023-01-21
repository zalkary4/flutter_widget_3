import 'package:flutter/material.dart';

class InkwellWidget2 extends StatefulWidget {
  const InkwellWidget2({Key? key}) : super(key: key);

  @override
  _InkwellWidget2State createState() => _InkwellWidget2State();
}

class _InkwellWidget2State extends State<InkwellWidget2> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(
            () {
              color = Colors.red;
            },
          );
        },
        child: Ink(
          height: 300,
          width: 300,
          color: color,
          child: const Center(
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
