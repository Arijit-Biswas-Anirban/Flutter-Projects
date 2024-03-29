import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';
import 'package:my_fitness/view/login/signup_view.dart';
import 'package:my_fitness/view/on_boarding/started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Daily Life",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: T_Color.primaryColor1,
        fontFamily: "Poppins",
      ),
      home: const SignUpView(),
    );
  }
}
