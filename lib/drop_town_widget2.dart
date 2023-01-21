import 'package:flutter/material.dart';

class DropTownWidget2 extends StatefulWidget {
  const DropTownWidget2({Key? key}) : super(key: key);

  @override
  _DropTownWidget2State createState() => _DropTownWidget2State();
}

class _DropTownWidget2State extends State<DropTownWidget2> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: dropdownValue,
        icon: const Icon(Icons.menu),
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? newValue) {
          setState(
            () {
              dropdownValue = newValue!;
            },
          );
        },
        items: const [
          DropdownMenuItem<String>(
            value: 'One',
            child: Text('One'),
          ),
          DropdownMenuItem<String>(
            value: 'Two',
            child: Text('Two'),
          ),
          DropdownMenuItem<String>(
            value: 'Three',
            child: Text('Three'),
          ),
        ],
      ),
    );
  }
}
