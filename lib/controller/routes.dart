
import 'package:flutter/material.dart';
import 'package:resume_cv/home/navigatortype_file/profilefile/profilepage.dart';
import 'package:resume_cv/home/startedfile/started_page.dart';

import '../home/continuefile/continuefirstpage/continuepagefirst.dart';
import '../home/continuefile/continuesecondpage/continuepagesecond.dart';
import '../home/continuefile/continuethirdpage/continuepagethird.dart';
import '../home/onscreenfile/on_screen_page.dart';

class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/view': (context)=>const OnScreen(),
    '/started': (context)=>const StartedPage(),
    '/first':(context)=>const ContinueFirstPage(),
    '/second':(context)=>const ContinueSecondPage(),
    '/third':(context)=>const ContinueThirdPage(),
    '/profile':(context)=>const ProfilePage(),
  };
}