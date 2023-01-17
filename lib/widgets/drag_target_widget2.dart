import 'package:flutter/material.dart';

class DragTargetWidget2 extends StatefulWidget {
  const DragTargetWidget2({Key? key}) : super(key: key);

  @override
  _DragTargetWidget2State createState() => _DragTargetWidget2State();
}

class _DragTargetWidget2State extends State<DragTargetWidget2> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: Colors.orangeAccent,
            onDraggableCanceled: (velocity, offset) {},
            feedback: Container(
              width: 150,
              height: 150,
              color: Colors.orangeAccent.withOpacity(0.5),
              child: const Center(
                child: Text(
                  'Box...',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                  ),
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
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: const Center(
                  child: Text('Drag here'),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
