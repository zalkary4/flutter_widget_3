import 'package:flutter/material.dart';

class CupertinoSwitchWidget2 extends StatefulWidget {
  const CupertinoSwitchWidget2({Key? key}) : super(key: key);

  @override
  _CupertinoSwitchWidget2State createState() => _CupertinoSwitchWidget2State();
}

class _CupertinoSwitchWidget2State extends State<CupertinoSwitchWidget2> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
          value: _light,
          onChanged: (bool value) {
            setState(() {
              _light = value;
            });
          },
        ),
      ),
    );
  }
}
