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
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LinearProgressIndicator(
            value: controller.value,
          ),
          const LinearProgressIndicator()
        ],
      ),
    );
  }
}
