import 'package:flutter/material.dart';

class DecorateBoxWidget2 extends StatefulWidget {
  const DecorateBoxWidget2({Key? key}) : super(key: key);

  @override
  _DecorateBoxWidget2State createState() => _DecorateBoxWidget2State();
}

class _DecorateBoxWidget2State extends State<DecorateBoxWidget2> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.deepOrange,
              Colors.blue,
            ],
          ),
        ),
      ),
    );
  }
}
