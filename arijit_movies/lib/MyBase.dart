import 'package:arijit_movies/MyDesign.dart';
import 'package:flutter/material.dart';

class MyBase extends StatefulWidget {
  const MyBase({super.key});

  @override
  State<MyBase> createState() => _MyBaseState();
}

class _MyBaseState extends State<MyBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color(0xff031330),
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "See-nemA\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "watch MOVIES to relax yourself<3",
                  style: TextStyle(fontSize: 12, color: Colors.white60),
                ),
              ],
            ),
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/me.jpg"),
          ),
          SizedBox(width: 20),
          Text("     "),
        ],
      ),
      body: const MyDesign(),
    );
  }
}
