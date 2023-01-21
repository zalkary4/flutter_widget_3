import 'package:flutter/material.dart';

class IgnorePointerWidget2 extends StatefulWidget {
  const IgnorePointerWidget2({Key? key}) : super(key: key);

  @override
  _IgnorePointerWidget2State createState() => _IgnorePointerWidget2State();
}

class _IgnorePointerWidget2State extends State<IgnorePointerWidget2> {
  bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                ignore = !ignore;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ignore ? Colors.red : Colors.green,
            ),
            child: Text(
              ignore ? 'Blocked' : 'All good',
            ),
          ),
          // const Divider(),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(
              child: const Text('Click me'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
