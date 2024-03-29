import 'package:claculator_project_arijit/MyAppBar.dart';
import 'package:claculator_project_arijit/MyBody.dart';
import 'package:claculator_project_arijit/MyBottomAppBar.dart';
import 'package:flutter/material.dart';

class MyMaterial extends StatefulWidget {
  const MyMaterial({Key? key});

  @override
  State<MyMaterial> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),
        body: MyBody(),
        bottomNavigationBar: myBottomAppBar(),
      ),
    );
  }
}

void main() {
  runApp(MyMaterial());
}
