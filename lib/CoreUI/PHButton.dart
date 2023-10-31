// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';

class ClickyBuilder extends StatefulWidget {
  final int first;
  final Function(int)? onPressButton;

  const ClickyBuilder(
      {Key? key, required this.first, required this.onPressButton})
      : super(key: key);

  @override
  ClickyBuilderState createState() => ClickyBuilderState();
}

class ClickyBuilderState extends State<ClickyBuilder> {
  Color color = Colors.blue;
  int _iAdd = 0;

  String pad(int i) => i.toString().padLeft(2, '0');
  num add(int i) => _iAdd = (i + 1);

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);

  //   log('widget.first ${widget.first}');
  //   add(_iAdd);
  //   widget.onPressButton!(_iAdd);
  // }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    _iAdd = widget.first;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text('Built at ${now.hour}:${pad(now.minute)}:'
          '${pad(now.second)} - '
          '$_iAdd'),
      // onPressed: () => print('_iAdd ${add(1)}'),
      onPressed: () => widget.onPressButton!(add(widget.first) as int),
      // onPressed: () => setState(() {}),
    );
  }
}
