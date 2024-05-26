import 'package:first_assigment/optionsRow.dart';
import 'package:first_assigment/profileCard.dart';
import 'package:first_assigment/settingsItemList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Center",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [ProfileCard(), OptionsRow(), SettingsItemsList()],
          ),
        ),
      ),
    );
  }
}
