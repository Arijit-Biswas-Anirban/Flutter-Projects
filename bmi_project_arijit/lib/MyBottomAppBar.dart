import 'package:flutter/material.dart';

class myBottomAppBar extends StatefulWidget {
  const myBottomAppBar({super.key});

  @override
  State<myBottomAppBar> createState() => _myBottomAppBarState();
}

class _myBottomAppBarState extends State<myBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "MADE  BY  ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "ARIJIT",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromARGB(255, 48, 202, 14),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Divider(
              color: Colors.yellow,
              height: 5,
              thickness: 0.7,
            ),
            width: 50,
          ),
        ],
      ),
    );
  }
}