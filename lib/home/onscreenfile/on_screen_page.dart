import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_cv/utils/colors.dart';
import 'package:resume_cv/utils/images_all.dart';

import '../startedfile/started_page.dart';

class OnScreen extends StatefulWidget {
  const OnScreen({super.key});

  @override
  State<OnScreen> createState() => _OnScreenState();
}

class _OnScreenState extends State<OnScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacementNamed('/'));
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: onScreenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: logoImage,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Text('JUBI-CV Maker',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
