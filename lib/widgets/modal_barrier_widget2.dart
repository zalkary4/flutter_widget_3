import 'package:flutter/material.dart';

class ModalBarrierWidget2 extends StatefulWidget {
  const ModalBarrierWidget2({Key? key}) : super(key: key);

  @override
  _ModalBarrierWidget2State createState() => _ModalBarrierWidget2State();
}

class _ModalBarrierWidget2State extends State<ModalBarrierWidget2> {
  bool activated = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ElevatedButton(
            child: const Text('Reactivated'),
            onPressed: () {
              setState(
                () {
                  activated = !activated;
                },
              );
            },
          ),
        ),
        if (activated)
          Opacity(
            opacity: 0.4,
            child: ModalBarrier(
              dismissible: true,
              onDismiss: () {
                setState(
                  () {
                    activated = !activated;
                  },
                );
              },
              color: Colors.orangeAccent,
            ),
          )
      ],
    );
  }
}
