import 'package:flutter/material.dart';

class DataColumnWidget2 extends StatefulWidget {
  const DataColumnWidget2({Key? key}) : super(key: key);

  @override
  _DataColumnWidget2State createState() => _DataColumnWidget2State();
}

class _DataColumnWidget2State extends State<DataColumnWidget2> {
  TextStyle titles = const TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            'name',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'age',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'color',
            style: titles,
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(Text('Max')),
            DataCell(Text('21')),
            DataCell(Text('Red')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Jane')),
            DataCell(Text('25')),
            DataCell(Text('Blue')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Yellow')),
          ],
        ),
      ],
    );
  }
}
