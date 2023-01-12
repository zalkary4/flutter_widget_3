import 'package:flutter/material.dart';

class DraggableWidget2 extends StatefulWidget {
  const DraggableWidget2({Key? key}) : super(key: key);

  @override
  State<DraggableWidget2> createState() => _DraggableWidget2State();
}

class _DraggableWidget2State extends State<DraggableWidget2> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Draggable(
              data: Colors.orangeAccent,
              // onDragCompleted: (velocity, offset) {},
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Text(
                  'Box...',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                  ),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orangeAccent,
                child: const Center(
                  child: Text('Box'),
                ),
              ),
            ),
            DragTarget(
              onAccept: (Color color) {
                caughtColor = color;
              },
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  width: 200,
                  height: 200,
                  color: accepted.isEmpty ? caughtColor : Colors.green.shade200,
                  // color: accepted.isEmpty ? caughtColor : Colors.green.shade200,
                  child: const Center(child: Text('Drag heree')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
