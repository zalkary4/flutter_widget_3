import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle title = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: title,
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: title,
          ),
        ),
        DataColumn(
          label: Text(
            'Color',
            style: title,
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(
              Text('Jane'),
            ),
            DataCell(
              Text('25'),
            ),
            DataCell(
              Text('blue'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Text('Max'),
            ),
            DataCell(
              Text('31'),
            ),
            DataCell(
              Text('red'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Text('Tod'),
            ),
            DataCell(
              Text('20'),
            ),
            DataCell(
              Text('yellow'),
            ),
          ],
        ),
      ],
    );
    // return Container();
  }
}
