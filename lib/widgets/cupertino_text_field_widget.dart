import 'package:flutter/cupertino.dart';

class CupertinoTextFieldWidget extends StatelessWidget {
  CupertinoTextFieldWidget({Key? key}) : super(key: key);
  final TextEditingController _textEditingController =
      TextEditingController(text: 'Flutter Mapp');
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: CupertinoTextField(
              controller: _textEditingController,
            ),
          ),
        ),
      ),
    );
  }
}
