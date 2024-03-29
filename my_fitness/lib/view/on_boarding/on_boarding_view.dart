import 'package:flutter/material.dart';
import 'package:my_fitness/common/color_extension.dart';
import 'package:my_fitness/common_widget/on_boarding_page.dart';
import 'package:my_fitness/view/login/signup_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller_page = PageController();

  int selectPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller_page.addListener(() {
      selectPage = controller_page.page?.round() ?? 0;
      setState(() {});
    });
  }

  List pageList = [
    {
      "title": "Track My Goal",
      "subtitle":
          "If sometimes there is a hindrance in achieving your goal, don't worry! I'm here, I'll assist you in reaching your goal.",
      "image": "assets/images/on_1.png",
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Let’s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/on_2.png",
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/on_3.png",
    },
    {
      "title": "Improve Sleep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/images/on_4.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: T_Color.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller_page,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              var page_obj = pageList[index] as Map? ?? {};
              return OnBodyPage(page_obj: page_obj);
            },
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                decoration: BoxDecoration(
                  color: T_Color.primaryColor1,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_next,
                    color: T_Color.white,
                    size: media.height*.05,
                  ),
                  onPressed: () {
                    if (selectPage < 3) {
                      selectPage += 1;
                      controller_page.animateToPage(selectPage, duration: const Duration(microseconds: 800), curve: Curves.bounceInOut);
                      
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView()));
                    }
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
