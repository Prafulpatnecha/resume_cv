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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: h/35,),
                        Container(
                          width: w/5,
                          height: w/5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h/60),
                            image: DecorationImage(
                              image: logoImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                              const SizedBox(height: 30,),
                        // Text.rich(
                        //   TextSpan(
                        //     children: [
                        //     ]
                        //   )
                        // )
                              Text('JUBI allows you to create your create resumes',style: TextStyle(color: onScreenColor,fontSize: w/25,fontWeight: FontWeight.w600,),),
                              Text('with many templates and share them.',style: TextStyle(color: onScreenColor,fontSize: w/25,fontWeight: FontWeight.w600),),
                        const SizedBox(height: 20,),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(w/2, w/7)),
                            // maximumSize: MaterialStateProperty.all(Size(600, 100)),
                            backgroundColor: MaterialStateColor.resolveWith((states) => onScreenColor),
                            overlayColor: MaterialStateColor.resolveWith((states) => Colors.white30)
                          ),
                            onPressed: () {
                            Navigator.of(context).pushNamed('/first');
                        }, child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: w/20),)),
                        const SizedBox(height: 40,),
                        Text('By continuing, you accept our',style: TextStyle(color: Colors.black54,fontSize: w/35,),),
                        Text.rich(TextSpan(
                          children: [

                        TextSpan(text: 'Term of Use',style: TextStyle(color: onScreenColor,fontSize: w/33.5,fontWeight: FontWeight.bold),),
                        TextSpan(text: ' & ',style: TextStyle(color: Colors.black54,fontSize: w/35,),),
                        TextSpan(text: 'Privacy Policy',style: TextStyle(color: onScreenColor,fontSize: w/33.5,fontWeight: FontWeight.bold),),
                          ]
                        ),),
                      ],
                    ),
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
