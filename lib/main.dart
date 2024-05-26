import 'package:first_assigment/optionsRow.dart';
import 'package:first_assigment/profileCard.dart';
import 'package:first_assigment/settingsItemList.dart';
import 'package:flutter/material.dart';

/**
 * change the icons
 * change all rounded to circle avater
 * the colors of all icons
 * look how chat gpt code the settings section
 * resize the text
 * github
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ProfileCard(), OptionsRow(), SettingsItemsList()],
          ),
        ),
      ),
    );
  }
}
