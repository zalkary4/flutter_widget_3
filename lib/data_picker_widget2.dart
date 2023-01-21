import 'package:flutter/material.dart';

class DataPickerWidget2 extends StatefulWidget {
  const DataPickerWidget2({Key? key}) : super(key: key);

  @override
  _DataPickerWidget2State createState() => _DataPickerWidget2State();
}

class _DataPickerWidget2State extends State<DataPickerWidget2> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}',
          ),
          ElevatedButton(
            child: const Text('Choose date'),
            onPressed: () async {
              DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1900),
                lastDate: DateTime(3000),
              );
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
