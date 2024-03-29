import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';
import 'package:my_fitness/common_widget/round_button.dart';
import 'package:my_fitness/view/on_boarding/on_boarding_view.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: T_Color.white,
      body: Container(
        width: media.width,
        height: media.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: T_Color.primaryG,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
        "assets/images/bg.jpg",
        fit: BoxFit.fill, 
        width: media.width,
        height: media.height,
      ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 7)),
                Text(
                  "My Fitness",
                  style: TextStyle(
                      color: T_Color.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Yes, I can!",
                  style: TextStyle(
                      color: T_Color.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                SafeArea(
                  child: Container(
                    height: media.height*.065,
                    width: media.width*0.85,
                    margin: EdgeInsets.all(10),
                    child: RoundButton(
                      title: "Get Started",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingView()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
