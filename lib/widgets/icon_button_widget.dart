import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                click += 1;
              });
            },
            iconSize: 30,
            icon: const Icon(Icons.add_box),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              setState(() {
                click -= 1;
              });
            },
            iconSize: 30,
            icon: const Icon(Icons.remove_circle),
          ),
          const SizedBox(height: 20),
          Text(
            'Click $click',
            style: const TextStyle(
              fontSize: 40,
            ),
          )
        ],
      ),
    );
  }
}
