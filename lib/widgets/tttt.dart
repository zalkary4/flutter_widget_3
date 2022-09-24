import 'package:flutter/material.dart';

class Tttt extends StatefulWidget {
  const Tttt({Key? key}) : super(key: key);

  @override
  _TtttState createState() => _TtttState();
}

class _TtttState extends State<Tttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
            child: Text(
          'hello',
          style: TextStyle(
            color: Colors.green,
            fontSize: 50,
            fontStyle: FontStyle.italic,
          ),
        )),
      ),
    );
  }
}
