import 'package:flutter/material.dart';

class InteraktiveViewWidget extends StatefulWidget {
  const InteraktiveViewWidget({Key? key}) : super(key: key);

  @override
  _InteraktiveViewWidgetState createState() => _InteraktiveViewWidgetState();
}

class _InteraktiveViewWidgetState extends State<InteraktiveViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Mappp'),
          ),
        ),
      ),
    );
  }
}
