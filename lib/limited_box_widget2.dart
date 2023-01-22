import 'package:flutter/material.dart';

class LimitedBoxWidget2 extends StatefulWidget {
  const LimitedBoxWidget2({Key? key}) : super(key: key);

  @override
  _LimitedBoxWidget2State createState() => _LimitedBoxWidget2State();
}

class _LimitedBoxWidget2State extends State<LimitedBoxWidget2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: LimitedBox(
          maxHeight: 50,
          maxWidth: 300,
          child: Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
              ),
              title: Text('Flutter Mapp'),
            ),
          ),
        ),
      ),
    );
  }
}
