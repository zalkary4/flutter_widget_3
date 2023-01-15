import 'package:flutter/material.dart';

class GridTileWidget extends StatefulWidget {
  const GridTileWidget({Key? key}) : super(key: key);

  @override
  _GridTileWidgetState createState() => _GridTileWidgetState();
}

class _GridTileWidgetState extends State<GridTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        width: 300,
        child: GridTile(
          header: Container(
            height: 40,
            color: Colors.orange,
            child: const Center(
              child: Text('Header'),
            ),
          ),
          footer: Container(
            height: 40,
            color: Colors.orange,
            child: const Center(child: Text('Footer')),
          ),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
