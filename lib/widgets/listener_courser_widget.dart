import 'package:flutter/material.dart';

class ListenerCourserWidget extends StatefulWidget {
  const ListenerCourserWidget({Key? key}) : super(key: key);

  @override
  _ListenerCourserWidgetState createState() => _ListenerCourserWidgetState();
}

class _ListenerCourserWidgetState extends State<ListenerCourserWidget> {
  int numberOfPress = 0;
  int numberOfReleases = 0;
  double x = 0.0;
  double y = 0.0;
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        setState(
          () {
            numberOfPress++;
          },
        );
      },
      onPointerMove: (PointerEvent details) {
        setState(
          () {
            x = details.position.dx;
            y = details.position.dy;
          },
        );
      },
      onPointerUp: (PointerEvent details) {
        setState(
          () {
            numberOfReleases++;
          },
        );
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'presses: $numberOfPress',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'presses: $numberOfReleases',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Curser: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
