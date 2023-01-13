import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({Key? key}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilterChip(
          label: const Text('Filter chip'),
          selected: isSelected,
          onSelected: (bool value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
          avatar: const Text('O0'),
        ),
      ),
    );
  }
}
