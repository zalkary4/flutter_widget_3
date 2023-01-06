import 'package:flutter/material.dart';

class FlexibleWidgetColumn extends StatefulWidget {
  const FlexibleWidgetColumn({Key? key}) : super(key: key);

  @override
  _FlexibleWidgetColumnState createState() => _FlexibleWidgetColumnState();
}

class _FlexibleWidgetColumnState extends State<FlexibleWidgetColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 5,
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                height: 200,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
