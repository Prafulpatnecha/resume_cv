import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resume_cv/home/continuefile/components/container_continue_file.dart';
import 'package:resume_cv/utils/colors.dart';

class ContinueThirdPage extends StatefulWidget {
  const ContinueThirdPage({super.key});

  @override
  State<ContinueThirdPage> createState() => _ContinueThirdPageState();
}

class _ContinueThirdPageState extends State<ContinueThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: onScreenColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 0.9,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                  ),
                  items: imageSlider,
                ),
              ),
              Container(
                child: containerContinue(
                  h: h,
                  w: w,
                  childfind: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                continueCircaling(width: w / 80),
                                SizedBox(
                                  width: w / 70,
                                ),
                                continueCircaling(width: w / 80),
                                SizedBox(
                                  width: w / 70,
                                ),
                                continueCircalBlime(width: w / 13),
                              ],
                            ),
                            textContinue(
                                w: w,
                                textfindfirst:
                                    'Al Powered CV Templates that Impress HR Professionals',
                                textfindtwo:
                                    'JUBI provides a collection of high-quality templates that help job seekers create professional-looking CVs.')
                          ],
                        ),
                      ),
                      buttonContinue(
                        w: w,
                        buttonfind: ElevatedButton(
                          style: ButtonStyle(
                            minimumSize:
                                WidgetStateProperty.all(Size(w / 2, 60)),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => onScreenColor),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/profile');
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> imageList = [
  'assets/images/view_1.png',
  'assets/images/view_2.png',
  'assets/images/view_3.png',
];

List<Widget> imageSlider = imageList
    .map((item) => SizedBox(
          child: Container(
            margin: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                ],
              ),
            ),
          ),
        ))
    .toList();
