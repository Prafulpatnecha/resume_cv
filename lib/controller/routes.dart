import 'package:flutter/material.dart';

import '../home/onscreenfile/on_screen_page.dart';

class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/': (context)=>const OnScreen(),
  };
}