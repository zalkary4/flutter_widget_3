import 'package:flutter/material.dart';

class MergeSemanticsWidget extends StatefulWidget {
  const MergeSemanticsWidget({Key? key}) : super(key: key);

  @override
  _MergeSemanticsWidgetState createState() => _MergeSemanticsWidgetState();
}

class _MergeSemanticsWidgetState extends State<MergeSemanticsWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      home: MergeSemantics(
          child: Row(children: const [
        Text('Flutter'),
        Text('Mapp'),
      ])),
    );
  }
}
