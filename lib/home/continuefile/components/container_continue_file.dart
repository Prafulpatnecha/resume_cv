import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/images_all.dart';
Align buildAlignSparkling({required double alignfirst,required double alignSecond}) {
  return Align(
    alignment: Alignment(alignfirst,alignSecond),
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: sparklingImage,
            fit: BoxFit.cover,
          )
      ),
    ),
  );
}

Container imageContinueShow({required double h,required double w,required AssetImage imageFind}) {
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
        color: onScreenColor,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: imageFind,
            fit: BoxFit.contain
        )
    ),
  );
}

CircleAvatar continueCircaling({required double width}) => CircleAvatar(radius: width,backgroundColor: Colors.black38,);

Container continueCircalBlime({required double width}) {
  return Container(
    height: 10,
    width: width,
    decoration: BoxDecoration(
        color: onScreenColor,
        borderRadius: BorderRadius.circular(5)
    ),
  );
}
Container textContinue({required double w,required String textfindfirst,required String textfindtwo}) {
  return Container(
    margin: const EdgeInsets.all(20),
    height: 200,
    width: w / 1.3,
    color: Colors.white,
    child:  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            textfindfirst,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textfindtwo,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    ),
  );
}

Align buttonContinue({required double w,required ElevatedButton buttonfind}) {
  return Align(
    alignment: const Alignment(0, 0.8),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 50,
            offset: Offset(0, -5),
            blurStyle: BlurStyle.normal,
            spreadRadius: 10,
          )
        ],
        color: Colors.white,
      ),
      child: buttonfind
    ),
  );
}
//continuepagefirst main state
Stack buildStack({required double h,required double w,required double doublefindone,required double doublefindtwo,required AssetImage imagefind,required ElevatedButton buttonfind}) {
  return Stack(
    children: [
      buildAlignSparkling(alignfirst: doublefindone, alignSecond: doublefindtwo),
      SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: h / 5,
                ),
                imageContinueShow(
                  h: h / 2,
                  w: w / 1.2,
                  imageFind: imagefind,
                )
              ],
            ),
            SizedBox(
              height: h / 70,
            ),
            containerContinue(h: h, w: w,buttonfind: buttonfind,
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
                          continueCircalBlime(width: w / 13),
                          SizedBox(
                            width: w / 70,
                          ),
                          continueCircaling(width: w / 80),
                          SizedBox(
                            width: w / 70,
                          ),
                          continueCircaling(width: w / 80),
                        ],
                      ),
                      textContinue(w:w,textfindfirst: 'Write a Resume That Gets You Hired',textfindtwo: 'JUBI is to help job seekers stand out from the crowd and increase their chances of landing their dream job.')
                    ],
                  ),
                ),
                buttonContinue(w: w, buttonfind: buttonfind),
              ],
            ),),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

Container containerContinue({
  required double h,
  required double w,
  ElevatedButton? buttonfind,
  required Stack childfind
}) {
  return Container(
            margin: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 20),
            height: h / 2.7,
            // width: w/1.2,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: childfind,
          );
}