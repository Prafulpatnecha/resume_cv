import 'package:flutter/material.dart';
import 'package:resume_cv/controller/routes.dart';

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akhil Sir',
      // title:'Resume Cv'
      // initialRoute: '/started',
      initialRoute: '/profile',
      // initialRoute: '/first',
      // initialRoute: '/third',
      routes: Approutes.routes,
    );
  }
}
