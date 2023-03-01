// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String name;
  ThirdPage({required this.name});
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {Navigator.pop(context, 'Result from third page');},
          child: Text(
            'Hi Mr.${widget.name}, go to first page',
          ),
        ),
      ),
    );
  }
}
