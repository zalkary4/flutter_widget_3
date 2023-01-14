import 'package:flutter/material.dart';

class FractionalySizedBoxWidget extends StatelessWidget {
  const FractionalySizedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.6,
        heightFactor: 0.9,
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
