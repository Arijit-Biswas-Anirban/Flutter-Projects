import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: T_Color.primaryG,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 116, 70, 168)),
            shadowColor: MaterialStatePropertyAll(Colors.red),
            fixedSize: MaterialStatePropertyAll(Size.fromWidth(270))),
        child: Text(
          title,
          style: TextStyle(
              color: T_Color.primaryColor1,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
