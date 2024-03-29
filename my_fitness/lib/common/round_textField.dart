import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? margin;
  final TextInputType? textInputType;
  final bool obscureText;
  const RoundTextField({super.key, this.hintText, this.prefixIcon, this.suffixIcon, this.margin, this.textEditingController, this.textInputType, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: T_Color.lightGrey, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: T_Color.grey, fontSize: 12),
          prefixIcon: Icon(prefixIcon, color: T_Color.grey),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
