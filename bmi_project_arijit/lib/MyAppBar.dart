import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "YOUR   ",
                style: TextStyle(
                  fontSize: 34,
                  fontStyle: FontStyle.italic,
                  foreground: Paint()
                    ..color = Colors.blue.shade400
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1,
                  shadows: const [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(4, 1),
                    ),
                  ],
                ),
              ),
               const TextSpan(
                text: "BMI!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
