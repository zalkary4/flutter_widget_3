import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  _FittedBoxWidgetState createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            // height: 25,
            // width: 100,
            // width: double.infinity,
            color: Colors.orange,
            child: const Text('Hello',
                style: TextStyle(fontSize: 22), textAlign: TextAlign.center)
            // child: const FittedBox(
            //   child: Text(
            //     'This is a pretty лждлыэвдслэывлсэыв text',
            //     style: TextStyle(
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
