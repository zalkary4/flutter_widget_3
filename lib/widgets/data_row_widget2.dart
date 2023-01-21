import 'package:flutter/material.dart';

class DataRowWidget2 extends StatefulWidget {
  const DataRowWidget2({Key? key}) : super(key: key);

  @override
  _DataRowWidget2State createState() => _DataRowWidget2State();
}

class _DataRowWidget2State extends State<DataRowWidget2> {
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
            'Name',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Color',
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
