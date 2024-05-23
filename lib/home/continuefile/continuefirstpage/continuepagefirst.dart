import 'package:flutter/material.dart';
import 'package:resume_cv/utils/colors.dart';
import 'package:resume_cv/utils/images_all.dart';

import '../components/container_continue_file.dart';

class ContinueFirstPage extends StatefulWidget {
  const ContinueFirstPage({super.key});

  @override
  State<ContinueFirstPage> createState() => _ContinueFirstPageState();
}

class _ContinueFirstPageState extends State<ContinueFirstPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: onContinueColor,
        child: buildStack(h: h, w: w,doublefindone: -0.9,doublefindtwo: 0, imagefind: pagesecondImage, buttonfind:  ElevatedButton(
          style: ButtonStyle(
            minimumSize:
            WidgetStateProperty.all(Size(w / 2, 60)),
            backgroundColor: WidgetStateColor.resolveWith(
                    (states) => onScreenColor),
          ),
          onPressed: () {Navigator.of(context).pushNamed('/second');
          },
          child: const Text(
            'Continue',
            style: TextStyle(
                color: Colors.white, fontSize: 23),
          ),
        ),),
      ),
    );
  }
}
// Container(
// height: h/1.5,
// width: h/2,
// decoration: BoxDecoration(
// color: onScreenColor,
// shape: BoxShape.circle
// // image: DecorationImage(
// //   image:
// // )
// ),
// )