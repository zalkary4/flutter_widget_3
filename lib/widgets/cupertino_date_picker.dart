import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  const CupertinoDatePickerWidget({Key? key}) : super(key: key);

  @override
  _CupertinoDatePickerWidgetState createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  DateTime dateTime = DateTime(2022, 2, 1, 10, 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: Colors.white,
                  initialDateTime: dateTime,
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  onDateTimeChanged: (DateTime newTime) {
                    setState(
                      () {
                        dateTime = newTime;
                      },
                    );
                  },
                ),
              ),
            );
          },
          child: Text('${dateTime.year}-${dateTime.month}-${dateTime.day}'),
        ),
      ),
    );
  }
}
