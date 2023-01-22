import 'package:flutter/material.dart';

class LiniearProgressIndicatorWidget2 extends StatefulWidget {
  const LiniearProgressIndicatorWidget2({Key? key}) : super(key: key);

  @override
  _LiniearProgressIndicatorWidget2State createState() =>
      _LiniearProgressIndicatorWidget2State();
}

class _LiniearProgressIndicatorWidget2State
    extends State<LiniearProgressIndicatorWidget2>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
