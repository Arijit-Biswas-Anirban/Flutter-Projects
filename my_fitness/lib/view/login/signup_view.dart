import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';
import 'package:my_fitness/common/round_textField.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: T_Color.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Hey there,",
                  style: TextStyle(color: T_Color.grey, fontSize: 16),
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                      color: T_Color.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                const RoundTextField(hintText: "First Name", prefixIcon: Icons.person_outline_rounded, textInputType: TextInputType.name,),
                SizedBox(height: media.width*0.04),
                const RoundTextField(hintText: "Last Name", prefixIcon: Icons.person_outline_rounded, textInputType: TextInputType.name,),
                SizedBox(height: media.width*0.04),
                const RoundTextField(hintText: "Email", prefixIcon: Icons.email_rounded, textInputType: TextInputType.emailAddress,),
                SizedBox(height: media.width*0.04),
                RoundTextField(hintText: "Password", prefixIcon: Icons.lock, textInputType: TextInputType.text, obscureText: _obscureText, suffixIcon: TextButton(onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                }, child: Icon(Icons.no_encryption_gmailerrorred_rounded)),),
                // Agree work start here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
