import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  _ElevatedButtonWidgetState createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ElevatedButton(
            onPressed: null,
            child: Text('Disable'),
          ),
          const SizedBox(height: 30),
          const ElevatedButton(
            onPressed: null,
            child: Text('Disable'),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Enabled'),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
