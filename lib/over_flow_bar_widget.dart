import 'package:flutter/material.dart';

class OverFlowBarWidget extends StatefulWidget {
  const OverFlowBarWidget({Key? key}) : super(key: key);

  @override
  _OverFlowBarWidgetState createState() => _OverFlowBarWidgetState();
}

class _OverFlowBarWidgetState extends State<OverFlowBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OverflowBar(
        spacing: 9,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Flutter Mapp'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Flutter Mapp'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Flutter Mapp'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Flutter Mapp'),
          ),
        ],
      ),
    );
  }
}
