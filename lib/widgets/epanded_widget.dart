import 'package:flutter/material.dart';

class EpandedWidget extends StatefulWidget {
  const EpandedWidget({Key? key}) : super(key: key);

  @override
  State<EpandedWidget> createState() => _EpandedWidgetState();
}

class _EpandedWidgetState extends State<EpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 200,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
            height: 200,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            height: 200,
          ),
        ),
      ],
    );
  }
}
