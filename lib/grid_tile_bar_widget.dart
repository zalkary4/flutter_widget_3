import 'package:flutter/material.dart';

class GridTileBarWidget extends StatefulWidget {
  const GridTileBarWidget({Key? key}) : super(key: key);

  @override
  _GridTileBarWidgetState createState() => _GridTileBarWidgetState();
}

class _GridTileBarWidgetState extends State<GridTileBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        width: 300,
        child: GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Flutter Mapp'),
            trailing: Icon(Icons.menu),
          ),
          footer: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg/800px-Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
