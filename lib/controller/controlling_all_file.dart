import 'package:flutter/material.dart';
import 'package:resume_cv/controller/routes.dart';
import 'package:resume_cv/utils/images_all.dart';

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akhil Sir',
      // title:'Resume Cv'
      initialRoute: '/',
      routes: Approutes.routes,
    );
  }
}
