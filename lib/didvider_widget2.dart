import 'package:flutter/material.dart';

class DidviderWidget2 extends StatefulWidget {
  const DidviderWidget2({Key? key}) : super(key: key);

  @override
  _DidviderWidget2State createState() => _DidviderWidget2State();
}

class _DidviderWidget2State extends State<DidviderWidget2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.orange,
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 40,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
