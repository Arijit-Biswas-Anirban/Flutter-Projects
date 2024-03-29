
import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class OnBodyPage extends StatelessWidget {
  final Map page_obj;
  const OnBodyPage({super.key, required this.page_obj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
                  width: media.width,
                  height: media.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        page_obj["image"].toString(),
                        width: media.width,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          page_obj["title"].toString(),
                          style: TextStyle(
                            color: T_Color.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          page_obj["subtitle"].toString(),
                          style: TextStyle(
                            color: T_Color.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}