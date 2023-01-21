//!time Picker &&& Date picker (91)
import 'package:flutter/material.dart';

class DateRangePickerWidget2 extends StatefulWidget {
  const DateRangePickerWidget2({Key? key}) : super(key: key);

  @override
  _DateRangePickerWidget2State createState() => _DateRangePickerWidget2State();
}

class _DateRangePickerWidget2State extends State<DateRangePickerWidget2> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${selectedDates.duration.inDays}'),
          ElevatedButton(
            onPressed: () async {
              DateTimeRange? dateTimeRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );
              if (dateTimeRange != null) {
                setState(() {
                  selectedDates = dateTimeRange;
                });
              }
            },
            child: const Text('Choose date'),
          ),
        ],
      ),
    );
  }
}
