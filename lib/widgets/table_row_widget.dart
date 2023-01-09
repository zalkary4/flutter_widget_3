import 'package:flutter/material.dart';

class TableRowWidget extends StatefulWidget {
  const TableRowWidget({Key? key}) : super(key: key);

  @override
  _TableRowWidgetState createState() => _TableRowWidgetState();
}

class _TableRowWidgetState extends State<TableRowWidget> {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(15),
        child: Text("Cell 1"),
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: Text("Cell 2"),
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: Text("Cell 3"),
      )
    ]);
    return Scaffold(
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(120),
          children: <TableRow>[
            tableRow,
            tableRow,
            tableRow,
            tableRow,
            tableRow
          ],
        ),
      ),
    );
  }
}
