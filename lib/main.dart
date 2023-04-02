import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

void main(List<String> args) {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  @override
  State<MyApps> createState() => _MyAppState();
}

class _MyAppState extends State<MyApps> {
  get floatingActionButton => null;

  String date = DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
            //yMMMMEEEEd().add_jm() lihat dokumentasi di intl package
            //DateTime.now().toIso8601String(),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
