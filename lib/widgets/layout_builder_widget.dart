import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({Key? key}) : super(key: key);

  @override
  _LayoutBuilderWidgetState createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          Center(
            child: Image.network('src'),
          );
        } else {
          return const Center(
            child: Text('Screenunder 600'),
          );
        }
      },
    );
  }
}
