import 'package:flutter/material.dart';

class OffStageWidget2 extends StatefulWidget {
  const OffStageWidget2({Key? key}) : super(key: key);

  @override
  _OffStageWidget2State createState() => _OffStageWidget2State();
}

class _OffStageWidget2State extends State<OffStageWidget2> {
  bool isHided = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: isHided,
              child: const Icon(
                Icons.flutter_dash,
                size: 100,
              ),
            ),
            ElevatedButton(
              child: Text('isHided = $isHided'),
              onPressed: () {
                setState(() {
                  isHided = !isHided;
                });
              },
            )
          ],
        ));
  }
}
