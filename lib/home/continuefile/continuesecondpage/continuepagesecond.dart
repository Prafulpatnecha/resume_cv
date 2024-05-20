import 'package:flutter/material.dart';
import 'package:resume_cv/home/continuefile/components/container_continue_file.dart';
import 'package:resume_cv/utils/colors.dart';
import 'package:resume_cv/utils/images_all.dart';

class ContinueSecondPage extends StatefulWidget {
  const ContinueSecondPage({super.key});

  @override
  State<ContinueSecondPage> createState() => _ContinueSecondPageState();
}

class _ContinueSecondPageState extends State<ContinueSecondPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.sizeOf(context).height;
    double w=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: onContinueColor,
        child: Stack(
          children: [
            buildAlignSparkling(alignfirst: 0.9, alignSecond: -0.8),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: h/5,),
                      imageContinueShow(h: h/2, w: w/1.2, imageFind: pagefirstImage)
                    ],
                  ),
                  SizedBox(height: h/70,),
                  containerContinue(h: h, w: w,childfind: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                continueCircaling(width: w/80),
                                SizedBox(width: w/70,),
                                continueCircalBlime(width: w/13),
                                SizedBox(width: w/70,),
                                continueCircaling(width: w/80),
                              ],
                            ),
                            textContinue(w: w, textfindfirst: 'Recruiter-Approved Resume Builder', textfindtwo: 'By using the JUBI job seekers can improve their chances of landing an interview for their desired job.')
                          ],
                        ),
                      ),
                      buttonContinue(w: w, buttonfind:  ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                          MaterialStateProperty.all(Size(w / 2, 60)),
                          backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => onScreenColor),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/third');
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white, fontSize: 23),
                        ),
                      ),)
                    ],
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
