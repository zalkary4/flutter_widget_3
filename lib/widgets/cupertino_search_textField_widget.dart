import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldWidget extends StatefulWidget {
  const CupertinoSearchTextFieldWidget({Key? key}) : super(key: key);

  @override
  _CupertinoSearchTextFieldWidgetState createState() =>
      _CupertinoSearchTextFieldWidgetState();
}

class _CupertinoSearchTextFieldWidgetState
    extends State<CupertinoSearchTextFieldWidget> {
  final TextEditingController _textController =
      TextEditingController(text: "Flutter Mapp");
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        color: CupertinoColors.systemOrange,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: CupertinoSearchTextField(
            controller: _textController,
          ),
        ),
      ),
    );
  }
}
