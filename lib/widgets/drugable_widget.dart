import 'package:flutter/material.dart';

class DraggableScrollableSheet22 extends StatelessWidget {
  const DraggableScrollableSheet22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.orange,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        );
      },
    );
  }
}
