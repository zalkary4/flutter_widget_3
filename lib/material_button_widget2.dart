import 'package:flutter/material.dart';

class MaterialButtonWidget2 extends StatefulWidget {
  const MaterialButtonWidget2({Key? key}) : super(key: key);

  @override
  _MaterialButtonWidget2State createState() => _MaterialButtonWidget2State();
}

class _MaterialButtonWidget2State extends State<MaterialButtonWidget2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {},
        highlightColor: Colors.green,
        splashColor: Colors.redAccent,
        color: Colors.blue,
        child: const Text('Click'),
      ),
    );
  }
}
