
import 'package:flutter/material.dart';
import 'package:resume_cv/home/startedfile/started_page.dart';

import '../home/continuefile/continuefirstpage/continuepagefirst.dart';
import '../home/onscreenfile/on_screen_page.dart';

class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/view': (context)=>const OnScreen(),
    '/started': (context)=>const StartedPage(),
    '/first':(context)=>const ContinueFirstPage(),
  };
}