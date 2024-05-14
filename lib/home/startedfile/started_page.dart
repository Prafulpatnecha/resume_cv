import 'package:flutter/material.dart';
import 'package:resume_cv/utils/colors.dart';
import 'package:resume_cv/utils/images_all.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          color: onScreenColor,
          image: DecorationImage(image: backImage, fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Spacer(),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  height: h/2.4,
                  width: w,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(h/40)
                  ),
                ),
              ],
            ),
            SizedBox(height: h/26,),
          ],
        ),
      ),
    );
  }
}
