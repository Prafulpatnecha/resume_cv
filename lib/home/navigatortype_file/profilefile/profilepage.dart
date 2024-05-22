// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:resume_cv/utils/colors.dart';

import '../../../utils/globle_controller.dart';
import '../components/container_components.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 1,
        //   items: [],
        // ),
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: onScreenColor, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            dividerHeight: 0,
            // labelPadding: EdgeInsets.zero,
            // padding: EdgeInsets.zero,
           // indicatorPadding: EdgeInsets.zero ,
            // physics: ScrollPhysics(),
            // labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                child: containerTab(textFind: 'Personal'),
              ),
              Tab(
                child: containerTab(textFind: 'Contact'),
              ),
              Tab(
                child: containerTab(textFind: 'Education'),
              ),
              Tab(child: containerTab(textFind: 'Experience'),),
              Tab(child: containerTab(textFind: 'Certificate'),),
              Tab(child: containerTab(textFind: 'Language'),),
              Tab(child: containerTab(textFind: 'Skills'),),
              Tab(child: containerTab(textFind: 'Hobbies'),),
              Tab(child: containerTab(textFind: 'Reference'),),
              Tab(icon: Icon(Icons.check_circle_outline,color: onScreenColor,),),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Container(
                child: Form(
                  key: personalkey,
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Row(
                        children: [
                          const SizedBox(width: 20,),
                          Container(
                            height: h/6,
                            width: w/3,
                            color: onScreenColor,
                            child: const CircleAvatar(
                              radius: double.infinity,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            width: w/2,
                            decoration: BoxDecoration(
                            color: onTextFiledColor,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: nameTextField(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
            ]
        ),
      ),
    );
  }
}
