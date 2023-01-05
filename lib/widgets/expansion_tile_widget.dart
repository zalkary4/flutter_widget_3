import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({Key? key}) : super(key: key);

  @override
  _ExpansionTileWidgetState createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: const Text('Expansion Tile'),
            trailing: Icon(_customIcon
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down),
            children: const <Widget>[
              ListTile(
                title: Text('This is tile number 2'),
              )
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customIcon = expanded);
            },
          ),
        ],
      ),
    );
  }
}
