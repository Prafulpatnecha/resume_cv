// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.white,
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 1,
        //   items: [],
        // ),
        appBar: AppBar(
          backgroundColor: Colors.white,
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
              Tab(
                child: containerTab(textFind: 'Experience'),
              ),
              Tab(
                child: containerTab(textFind: 'Certificate'),
              ),
              Tab(
                child: containerTab(textFind: 'Language'),
              ),
              Tab(
                child: containerTab(textFind: 'Skills'),
              ),
              Tab(
                child: containerTab(textFind: 'Hobbies'),
              ),
              Tab(
                child: containerTab(textFind: 'Reference'),
              ),
              Tab(
                icon: Icon(
                  Icons.check_circle_outline,
                  color: onScreenColor,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          SizedBox(
            child: Form(
              key: personalkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: h / 6.8,
                          width: w / 3.5,
                          // color: onScreenColor,
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  XFile? xfileimage = await imagePicker
                                      .pickImage(source: ImageSource.gallery);
                                  setState(() {
                                    fileimage = File(xfileimage!.path);
                                  });
                                },
                                child: (fileimage != null)
                                    ? CircleAvatar(
                                        radius: double.infinity,
                                        backgroundImage: FileImage(fileimage!))
                                    : const CircleAvatar(
                                        radius: double.infinity,
                                        backgroundImage: AssetImage(
                                            'assets/img/profile.png'),
                                      ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Icon(
                                  Icons.image_search_sharp,
                                  color: onScreenColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Full Name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: w / 1.9,
                              child: nameTextField(
                                  textFind: 'Full Name',
                                  lengthfind: 31,
                                  valueintfind: 1,
                                  controllerfind: txtname, keybordfindType: TextInputType.text),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildRowTextOnly(textFind: 'Position/Title'),
                    ListTile(
                        title: nameTextField(
                            textFind: 'AccountManager',
                            lengthfind: 101,
                            valueintfind: 1,
                            controllerfind: txtposition, keybordfindType: TextInputType.text)),
                    const SizedBox(height: 20),
                    buildRowTextOnly(textFind: 'About Me'),
                    ListTile(
                      title: nameTextField(
                          textFind:
                              'Example: Experienced marketer with a creative edge. Skilled in branding, social media, and revenue generation. Dedicated to driving results for businesses',
                          lengthfind: 151,
                          valueintfind: 5,
                          controllerfind: txtAboutme, keybordfindType: TextInputType.text),
                    ),
                    // const Spacer(),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: onContinueColor,
                          onPressed: () {
                            personalkey.currentState!.validate();
                          },
                          child: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                buildRowTextOnly(textFind: 'Email Address'),
                ListTile(
                  title: nameTextField(
                      controllerfind: txtemail,
                      textFind: 'admin@gmail.com',
                      lengthfind: 33,
                      valueintfind: 1, keybordfindType: TextInputType.text),
                ),
                // SizedBox(height: 5,),
                buildRowTextOnly(textFind: 'Phone Number'),
                ListTile(
                  title: nameTextField(
                      textFind: '1234567890',
                      lengthfind: 11,
                      valueintfind: 1,
                      controllerfind: txtphone, keybordfindType: TextInputType.number),
                ),
                buildRowTextOnly(textFind: 'Address'),
                ListTile(
                    title: nameTextField(
                        textFind: 'Robert Robertson, 1234 NW Bobcat Lane',
                        lengthfind: 151,
                        valueintfind: 1,
                        controllerfind: txtaddress, keybordfindType: TextInputType.text)),
                buildRowTextOnly(textFind: 'Personal Website (Optional)'),
                ListTile(
                    title: nameTextField(
                        textFind: 'omgcration.in',
                        lengthfind: 151,
                        valueintfind: 1,
                        controllerfind: txtwebsite, keybordfindType: TextInputType.text)),
                buildRowTextOnly(textFind: 'Social Media (Optional)'),
                const SizedBox(
                  height: 15,
                ),
                ...List.generate(
                  socialList.length,
                  (index) => Container(
                    child: Column(
                      children: [
                        buildRowTextOnly(textFind: 'Platform'),
                        ListTile(
                          title: nameTextField(
                              textFind: 'Instagram',
                              lengthfind: 21,
                              valueintfind: 1,
                              controllerfind: socialList[index].platform, keybordfindType: TextInputType.text),
                        ),
                        buildRowTextOnly(textFind: 'Username'),
                        ListTile(
                          title: nameTextField(
                              textFind: 'Admin1234',
                              lengthfind: 31,
                              valueintfind: 1,
                              controllerfind: socialList[index].username, keybordfindType: TextInputType.text),
                        ),
                        buildRowTextOnly(textFind: 'Profile URL'),
                        ListTile(
                          title: nameTextField(
                              textFind:
                                  'https://www.networknation.com/Professional_Pul..',
                              lengthfind: 301,
                              valueintfind: 1,
                              controllerfind: socialList[index].profileUrl, keybordfindType: TextInputType.text),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    int selectindex = index;
                                    socialList.removeAt(selectindex);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete_outline,
                                  color: onContinueColor,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                (socialList.length < 3)
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            if (socialList.length < 3) {
                              TextEditingController platfrom =
                                  TextEditingController();
                              TextEditingController profileUrl =
                                  TextEditingController();
                              TextEditingController username =
                                  TextEditingController();
                              socialList.add(SocialModal(
                                platform: platfrom,
                                profileUrl: profileUrl,
                                username: username,
                              ));
                            }
                          });
                        },
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.add_circle,
                              color: onContinueColor,
                            ),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: onTextFiledColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  'Add Social Media',
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                  SizedBox(height: 20,),
              ],
            ),
          ),
          (educationList.isEmpty)?buildContainerAddingOption(
            filledFind: 'Education',
            detailsFind:
                "You haven't added any education yet. Start adding & complete your CV!",
            textButtonFind: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith((states) => onScreenColor,),
                overlayColor: WidgetStateColor.resolveWith((states) => Colors.white30,)
              ),
                onPressed: () {
                setState(() {
                  TextEditingController txtschool=TextEditingController();
                  TextEditingController txtlevel=TextEditingController();
                  TextEditingController txtgrade=TextEditingController();
                  TextEditingController txtstartYear=TextEditingController();
                  TextEditingController txtendYear=TextEditingController();
                educationList.add(EducationModal(txtendYear: txtendYear,txtgrade: txtgrade,txtlevel: txtlevel,txtschool: txtschool,txtstartYear: txtstartYear,));
                });
                }, child: const Text('Add Education',style: TextStyle(color: Colors.white),),),
          ):SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('Education',style: TextStyle(color: onScreenColor),),
                    ],
                  ),
                  // SizedBox(height: 20,),
                  ...List.generate(educationList.length, (index) => Column(
                    children: [
                  SizedBox(height: 20,),
                      Divider(),
                      Container(
                        // height: 70,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Text('${index+1}',style: TextStyle(color: onScreenColor,fontWeight: FontWeight.bold),),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  educationList.removeAt(index);
                                });
                              },
                                icon: Icon(Icons.delete_outline,color: onContinueColor,)),
                                SizedBox(width: 10,)
                          ],
                        ),
                      ),
                  SizedBox(height: 20,),
                      buildRowTextOnly(textFind: 'School'),
                      ListTile(title:nameTextField(textFind: 'University of Any town', lengthfind: 100, valueintfind: 1, controllerfind: educationList[index].txtschool!, keybordfindType: TextInputType.text)),
                      buildRowTextOnly(textFind: 'Level'),
                      ListTile(title:nameTextField(textFind: 'Master', lengthfind: 51, valueintfind: 1, controllerfind: educationList[index].txtlevel!, keybordfindType: TextInputType.text)),
                      buildRowTextOnly(textFind: 'Grade/GPA (Optional)'),
                      ListTile(title:nameTextField(textFind: '3.50/4.00/B+', lengthfind: 4, valueintfind: 1, controllerfind: educationList[index].txtgrade!, keybordfindType: TextInputType.text)),
                      RowDateFill(w: w,index: index,txtstartYear: educationList[index].txtstartYear!,txtendYear: educationList[index].txtendYear!),
                    ],
                  ),
                  ),
                  Divider(),
                  SizedBox(height: 30,),
                  (educationList.length < 4)
                      ? GestureDetector(
                    onTap: () {
                      setState(() {
                        if (socialList.length < 4) {
                          TextEditingController txtschool=TextEditingController();
                          TextEditingController txtlevel=TextEditingController();
                          TextEditingController txtgrade=TextEditingController();
                          TextEditingController txtstartYear=TextEditingController();
                          TextEditingController txtendYear=TextEditingController();
                          educationList.add(EducationModal(txtendYear: txtendYear,txtgrade: txtgrade,txtlevel: txtlevel,txtschool: txtschool,txtstartYear: txtstartYear,));
                        }
                      });
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.add_circle,
                          color: onContinueColor,
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color: onTextFiledColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Add Education',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                      : Container(),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
          //Todo Experience
          (experienceList.isEmpty)?Container(
            child: buildContainerAddingOption(filledFind: 'Experiences (Optional)', detailsFind: "You haven't added any experience yet. Start adding & complete your CV!",
                textButtonFind: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateColor.resolveWith((states) => onScreenColor,)
                    ),
                    onPressed: () {
                      setState(() {
                        TextEditingController txtSummaryExperience=TextEditingController();
                        TextEditingController txtCompany=TextEditingController();
                        TextEditingController txtPosition=TextEditingController();
                        TextEditingController txtJob =TextEditingController();
                        TextEditingController txtStartYear=TextEditingController();
                        TextEditingController txtEndYear=TextEditingController();
                        experienceList.add(ExperienceModal(txtCompany: txtCompany,txtEndYear: txtEndYear,txtJob: txtJob,txtPosition: txtPosition,txtStartYear: txtStartYear,txtSummaryExperience: txtSummaryExperience));
                      });
            }, child: Text('Add Experience',style: TextStyle(color: Colors.white),))),
          ):SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('Experience',style: TextStyle(color: onScreenColor),),
                    ],
                  ),
                  // SizedBox(height: 20,),
                  ...List.generate(experienceList.length, (index) => Column(
                    children: [
                      SizedBox(height: 20,),
                      Divider(),
                      Container(
                        // height: 70,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Text('${index+1}',style: TextStyle(color: onScreenColor,fontWeight: FontWeight.bold),),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    experienceList.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete_outline,color: onContinueColor,)),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      buildRowTextOnly(textFind: 'Company/Organization Name'),
                      ListTile(title:nameTextField(textFind: 'Microsoft', lengthfind: 100, valueintfind: 1, controllerfind: experienceList[index].txtCompany!, keybordfindType: TextInputType.text)),
                      buildRowTextOnly(textFind: 'Position/Title'),
                      ListTile(title:nameTextField(textFind: 'Account Manager', lengthfind: 51, valueintfind: 1, controllerfind: experienceList[index].txtPosition!, keybordfindType: TextInputType.text)),
                      buildRowTextOnly(textFind: 'Job Type'),
                      ListTile(title:nameTextField(textFind: 'Full-time', lengthfind: 30, valueintfind: 1, controllerfind: experienceList[index].txtJob!, keybordfindType: TextInputType.text)),
                      RowDateFill(w: w,index: index,txtstartYear: experienceList[index].txtStartYear!,txtendYear: experienceList[index].txtEndYear!),
                      buildRowTextOnly(textFind: 'Summary (Optional)'),
                      ListTile(title: nameTextField(keybordfindType: TextInputType.text, textFind: 'Briefly describe your experience in this role.', lengthfind: 150, valueintfind: 7, controllerfind: experienceList[index].txtSummaryExperience!),),
                    ],
                  ),
                  ),
                  // buildRowTextOnly(textFind: 'Summary (Optional)'),
                  Divider(),
                  SizedBox(height: 30,),
                  (experienceList.length < 5)
                      ? GestureDetector(
                    onTap: () {
                      setState(() {
                        if (experienceList.length < 5) {
                          TextEditingController txtSummaryExperience=TextEditingController();
                          TextEditingController txtCompany=TextEditingController();
                          TextEditingController txtPosition=TextEditingController();
                          TextEditingController txtJob =TextEditingController();
                          TextEditingController txtStartYear=TextEditingController();
                          TextEditingController txtEndYear=TextEditingController();
                          experienceList.add(ExperienceModal(txtCompany: txtCompany,txtEndYear: txtEndYear,txtJob: txtJob,txtPosition: txtPosition,txtStartYear: txtStartYear,txtSummaryExperience: txtSummaryExperience));
                        }
                      });
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.add_circle,
                          color: onContinueColor,
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              color: onTextFiledColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Add Education',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                      : Container(),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
          //Todo Certificates
        (certificateList.isEmpty)?Container(
          child: buildContainerAddingOption(filledFind: 'Certificates (Optional)', detailsFind: "You haven't added any certificate yet. Start adding & complete your CV!",
              textButtonFind: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateColor.resolveWith((states) => onScreenColor,)
                  ),
                  onPressed: () {
                    setState(() {
                      TextEditingController txtCertificateName=TextEditingController();
                      TextEditingController txtInstituteName=TextEditingController();
                      TextEditingController txtCertificationYear =TextEditingController();
                      TextEditingController txtSummary=TextEditingController();
                      certificateList.add(CertificateModal(txtCertificateName: txtCertificateName,txtCertificationYear: txtCertificationYear,txtInstituteName: txtInstituteName,txtSummary: txtSummary));
                    });
                  }, child: Text('Add Certificate',style: TextStyle(color: Colors.white),))),
        ):SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Certificate',style: TextStyle(color: onScreenColor),),
                  ],
                ),
                // SizedBox(height: 20,),
                ...List.generate(certificateList.length, (index) => Column(
                  children: [
                    SizedBox(height: 20,),
                    Divider(),
                    Container(
                      // height: 70,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('${index+1}',style: TextStyle(color: onScreenColor,fontWeight: FontWeight.bold),),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  certificateList.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete_outline,color: onContinueColor,)),
                          SizedBox(width: 10,)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    buildRowTextOnly(textFind: 'Certificate Name'),
                    ListTile(title:nameTextField(textFind: 'Google Ads', lengthfind: 100, valueintfind: 1, controllerfind: certificateList[index].txtCertificateName!, keybordfindType: TextInputType.text)),
                    buildRowTextOnly(textFind: 'Institute Name'),
                    ListTile(title:nameTextField(textFind: 'InnovateX Training', lengthfind: 51, valueintfind: 1, controllerfind: certificateList[index].txtInstituteName!, keybordfindType: TextInputType.text)),
                    buildRowTextOnly(textFind: 'Certification Year'),
                    ListTile(title:nameTextField(textFind: '2024', lengthfind: 4, valueintfind: 1, controllerfind: certificateList[index].txtCertificationYear!, keybordfindType: TextInputType.text)),
                    buildRowTextOnly(textFind: 'Summary (Optional)'),
                    ListTile(title: nameTextField(keybordfindType: TextInputType.text, textFind: 'Summarize your certificates briefly highlighting relevant qualifications and expertise.', lengthfind: 150, valueintfind: 7, controllerfind: certificateList[index].txtCertificationYear!),),
                  ],
                ),
                ),
                // buildRowTextOnly(textFind: 'Summary (Optional)'),
                Divider(),
                SizedBox(height: 30,),
                (certificateList.length < 5)
                    ? GestureDetector(
                  onTap: () {
                    setState(() {
                      if (certificateList.length < 5) {
                        TextEditingController txtCertificateName=TextEditingController();
                        TextEditingController txtInstituteName=TextEditingController();
                        TextEditingController txtCertificationYear =TextEditingController();
                        TextEditingController txtSummary=TextEditingController();
                        certificateList.add(CertificateModal(txtCertificateName: txtCertificateName,txtCertificationYear: txtCertificationYear,txtInstituteName: txtInstituteName,txtSummary: txtSummary));
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.add_circle,
                        color: onContinueColor,
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: onTextFiledColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            'Add Education',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                    : Container(),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
        ]),
      ),
    );
  }

  Row RowDateFill({required double w,required int index,required TextEditingController txtstartYear,required TextEditingController txtendYear}) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildRowTextOnly(textFind: 'Start Year'),
                            Container(
                              width: w/2.5,
                                child: nameTextField(textFind: '1999', lengthfind: 5, valueintfind: 1, controllerfind: txtstartYear, keybordfindType: TextInputType.number))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildRowTextOnly(textFind: 'End Year'),
                            Container(
                                width: w/2.5,
                                child: nameTextField(textFind: '2002', lengthfind: 5, valueintfind: 1, controllerfind: txtendYear, keybordfindType: TextInputType.number)),
                          ],
                        ),
                      ],
                    );
  }

  Widget buildContainerAddingOption(
      {required String filledFind,
      required String detailsFind,
      required ElevatedButton textButtonFind}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                filledFind,
                style: TextStyle(color: onScreenColor),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 200,
            child: Image.asset('assets/img/adding.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Text(
              detailsFind,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: onScreenColor, fontWeight: FontWeight.bold),
            ),
          ),
          textButtonFind,
        ],
      ),
    );
  }
}
