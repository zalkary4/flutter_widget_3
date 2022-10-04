import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
  const CupertinoSlidingSegmentedControlWidget({Key? key}) : super(key: key);

  @override
  _CupertinoSlidingSegmentedControlWidgetState createState() =>
      _CupertinoSlidingSegmentedControlWidgetState();
}

class _CupertinoSlidingSegmentedControlWidgetState
    extends State<CupertinoSlidingSegmentedControlWidget> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoSlidingSegmentedControl(
            groupValue: _sliding,
            onValueChanged: (int? newValue) {
              setState(() {
                _sliding = newValue;
              });
            },
            children: const {
              0: Text('Text 0'),
              1: Text('Text 1'),
              2: Text('Text 2'),
            }),
      ),
    );
  }
}
