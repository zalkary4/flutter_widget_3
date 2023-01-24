import 'package:flutter/material.dart';

class OriantationBuilderWidget2 extends StatefulWidget {
  const OriantationBuilderWidget2({Key? key}) : super(key: key);

  @override
  _OriantationBuilderWidget2State createState() =>
      _OriantationBuilderWidget2State();
}

class _OriantationBuilderWidget2State extends State<OriantationBuilderWidget2> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const Center(
            child: Text('Portrait'),
          );
        } else {
          return const Center(
            child: Text('Landscape'),
          );
        }
      },
    );
  }
}
