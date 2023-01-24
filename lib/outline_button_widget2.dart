import 'package:flutter/material.dart';

class OutlineButtonWidget2 extends StatefulWidget {
  const OutlineButtonWidget2({Key? key}) : super(key: key);

  @override
  _OutlineButtonWidget2State createState() => _OutlineButtonWidget2State();
}

class _OutlineButtonWidget2State extends State<OutlineButtonWidget2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.orangeAccent),
        child: Text('click me'),
      ),
    );
  }
}
