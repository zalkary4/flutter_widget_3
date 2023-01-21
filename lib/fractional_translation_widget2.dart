import 'package:flutter/material.dart';

class FractionalTranslationWidget2 extends StatefulWidget {
  const FractionalTranslationWidget2({Key? key}) : super(key: key);

  @override
  _FractionalTranslationWidget2State createState() =>
      _FractionalTranslationWidget2State();
}

class _FractionalTranslationWidget2State
    extends State<FractionalTranslationWidget2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 100,
          width: 100,
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.red,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
