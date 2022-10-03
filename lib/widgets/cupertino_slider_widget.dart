import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({Key? key}) : super(key: key);

  @override
  _CupertinoSliderWidgetState createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(_currentValue.toString()),
            const SizedBox(
              height: 50,
            ),
            CupertinoSlider(
              value: _currentValue,
              min: 0,
              max: 20,
              divisions: 100,
              onChanged: (selectedValue) {
                setState(
                  () {
                    _currentValue = selectedValue;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
