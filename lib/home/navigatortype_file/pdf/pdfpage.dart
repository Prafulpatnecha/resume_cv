// import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as cv;
import 'package:printing/printing.dart';

// import 'package:resume_cv/utils/colors.dart';
import 'package:resume_cv/utils/globle_controller.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatePdf(),
      ),
    );
  }
}

Future<Uint8List> generatePdf() async {
  final pdf = cv.Document();
  final backImage = await imageFromAssetBundle('assets/img/backimage.png');
  // var profileimagefind = ;
  var profileimage = (fileimage != null)
      ? cv.MemoryImage(fileimage!.readAsBytesSync())
      : await imageFromAssetBundle('assets/img/profile.png');
  // else{
  // }
  pdf.addPage(
    cv.MultiPage(
      margin: cv.EdgeInsets.zero,
      pageFormat: PdfPageFormat.a5,
      build: (context) => [
        cv.Container(
          child: cv.Stack(
            children: [
              cv.Container(
                child: cv.Image(backImage, fit: cv.BoxFit.contain),
              ),
              cv.Column(
                children: [
                  cv.SizedBox(
                    height: 70,
                  ),
                  cv.Table(
                    // border: cv.TableBorder.all(color: PdfColors.black),
                    children: [
                      cv.TableRow(
                        children: [
                          cv.Expanded(
                            child: cv.Container(
                              height: 10,
                            ),
                          ),
                          cv.Expanded(
                            child: cv.Container(height: 10),
                          ),
                        ],
                      ),
                      cv.TableRow(
                        children: [
                          cv.Column(children: [
                            cv.Row(
                              children: [
                                cv.SizedBox(
                                  width: 5,
                                ),
                                cv.Container(
                                  height: 120,
                                  width: 150,
                                  decoration: cv.BoxDecoration(
                                      // color: PdfColors.cyan,
                                      border: cv.Border.all(
                                          color: PdfColors.blue, width: 5)),
                                  child: cv.Image(profileimage,
                                      fit: cv.BoxFit.cover),
                                ),
                              ],
                            )
                          ]),
                          cv.Column(
                            crossAxisAlignment: cv.CrossAxisAlignment.start,
                            children: [
                              cv.SizedBox(
                                height: 10,
                              ),
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text(txtname.text,
                                      style: cv.TextStyle(
                                          fontWeight: cv.FontWeight.bold,
                                          fontSize: 20)),
                                ],
                              ),
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text(
                                    txtwebsite.text,
                                  ),
                                ],
                              ),
                              cv.Container(
                                // width: 100,
                                margin: const cv.EdgeInsets.only(right: 15),
                                padding: const cv.EdgeInsets.symmetric(
                                    horizontal: 10),
                                child: cv.Divider(
                                    color: PdfColors.blue, thickness: 2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Todo
                  cv.Table(
                    // border: cv.TableBorder.all(),
                    children: [
                      cv.TableRow(
                        children: [
                          cv.Expanded(
                            flex: 1,
                            child: cv.Container(
                              height: 30,
                            ),
                          ),
                          cv.Expanded(
                            flex: 1,
                            child: cv.Container(height: 30),
                          ),
                        ],
                      ),
                      cv.TableRow(
                        children: [
                          cv.Column(
                            crossAxisAlignment: cv.CrossAxisAlignment.start,
                            children: [
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text('Contact',
                                      style: cv.TextStyle(
                                          fontWeight: cv.FontWeight.bold,
                                          fontSize: 15,
                                          color: PdfColors.white)),
                                ],
                              ),
                              cv.Row(
                                children: [
                                  cv.Container(
                                    width: 150,
                                    child: cv.Divider(color: PdfColors.white),
                                  )
                                ],
                              ),
                              cv.Container(
                                // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                // color: PdfColors.white,
                                width: 130,
                                child: cv.Column(
                                  children: [
                                    cv.Row(
                                      children: [
                                        cv.SizedBox(
                                          width: 10,
                                        ),
                                        cv.Text(txtaddress.text,
                                            style: const cv.TextStyle(
                                                color: PdfColors.white)),
                                      ],
                                    ),
                                    cv.Row(
                                      children: [
                                        cv.SizedBox(
                                          width: 10,
                                        ),
                                        cv.Text(txtphone.text,
                                            style: const cv.TextStyle(
                                                color: PdfColors.white)),
                                      ],
                                    ),
                                    cv.Row(
                                      children: [
                                        cv.SizedBox(
                                          width: 10,
                                        ),
                                        cv.Text(txtemail.text,
                                            style: const cv.TextStyle(
                                                color: PdfColors.white)),
                                      ],
                                    ),
                                    cv.Row(
                                      children: [
                                        cv.SizedBox(
                                          width: 10,
                                        ),
                                        cv.Text(txtwebsite.text,
                                            style: const cv.TextStyle(
                                                color: PdfColors.white)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              cv.SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          // TWO
                          cv.Column(
                            children: [
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text('About Me',
                                      style: cv.TextStyle(
                                          fontWeight: cv.FontWeight.bold,
                                          fontSize: 15,
                                          color: PdfColors.black)),
                                ],
                              ),
                              cv.Row(
                                children: [
                                  cv.Container(
                                    width: 150,
                                    child: cv.Divider(color: PdfColors.black),
                                  ),
                                ],
                              ),
                              cv.Container(
                                  // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                  // color: PdfColors.white,
                                  // width: 130,
                                  child: cv.Column(children: [
                                cv.Row(
                                  children: [
                                    cv.SizedBox(
                                      width: 10,
                                    ),
                                     cv.Container(
                                       width: 120,
                                       child:
                                     cv.Text(txtAboutme.text,
                                        style: const cv.TextStyle(
                                            color: PdfColors.black)),
                                     ),
                                  ],
                                ),
                              ])),
                              cv.SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Todo
                  cv.Table(
                    // border: cv.TableBorder.all(),
                    children: [
                      cv.TableRow(
                        children: [
                          cv.Expanded(
                            flex: 1,
                            child: cv.Container(
                              height: 10,
                            ),
                          ),
                          cv.Expanded(
                            flex: 1,
                            child: cv.Container(height: 10),
                          ),
                        ],
                      ),
                      cv.TableRow(
                        children: [
                          cv.Column(
                            crossAxisAlignment: cv.CrossAxisAlignment.start,
                            children: [
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text('Skills',
                                      style: cv.TextStyle(
                                          fontWeight: cv.FontWeight.bold,
                                          fontSize: 15,
                                          color: PdfColors.white)),
                                ],
                              ),
                              cv.Row(
                                children: [
                                  cv.Container(
                                    width: 150,
                                    child: cv.Divider(color: PdfColors.white),
                                  )
                                ],
                              ),
                              cv.Container(
                                // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                // color: PdfColors.white,
                                width: 130,
                                child: cv.Column(
                                  children: [
                                    ...List.generate(
                                      skillsList.length,
                                      (index) => cv.Row(
                                        children: [
                                          cv.SizedBox(
                                            width: 10,
                                          ),
                                          cv.Text(
                                              skillsList[index].txtSkills!.text,
                                              style: const cv.TextStyle(
                                                  color: PdfColors.white)),
                                          cv.SizedBox(
                                            width: 10,
                                          ),
                                          cv.Text(
                                              '${skillsList[index].txtExperience!.text}Year',
                                              style: const cv.TextStyle(
                                                  color: PdfColors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              cv.SizedBox(
                                height: 10,
                              ),
                              //Todo Language
                              cv.Column(
                                crossAxisAlignment: cv.CrossAxisAlignment.start,
                                children: [
                                  cv.Row(
                                    children: [
                                      cv.SizedBox(
                                        width: 10,
                                      ),
                                      cv.Text('Language',
                                          style: cv.TextStyle(
                                              fontWeight: cv.FontWeight.bold,
                                              fontSize: 15,
                                              color: PdfColors.white)),
                                    ],
                                  ),
                                  cv.Row(
                                    children: [
                                      cv.Container(
                                        width: 150,
                                        child:
                                            cv.Divider(color: PdfColors.white),
                                      )
                                    ],
                                  ),
                                  cv.Container(
                                    // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                    // color: PdfColors.white,
                                    width: 130,
                                    child: cv.Column(
                                      children: [
                                        ...List.generate(
                                          languageList.length,
                                          (index) => cv.Row(
                                            children: [
                                              cv.SizedBox(
                                                width: 10,
                                              ),
                                              cv.Text(
                                                  languageList[index]
                                                      .txtLanguage!
                                                      .text,
                                                  style: const cv.TextStyle(
                                                      color: PdfColors.white)),
                                              cv.SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  cv.SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                              //ToDO References
                              cv.Column(
                                crossAxisAlignment: cv.CrossAxisAlignment.start,
                                children: [
                                  cv.Row(
                                    children: [
                                      cv.SizedBox(
                                        width: 10,
                                      ),
                                      cv.Text('References',
                                          style: cv.TextStyle(
                                              fontWeight: cv.FontWeight.bold,
                                              fontSize: 15,
                                              color: PdfColors.white)),
                                    ],
                                  ),
                                  cv.Row(
                                    children: [
                                      cv.Container(
                                        width: 150,
                                        child:
                                            cv.Divider(color: PdfColors.white),
                                      )
                                    ],
                                  ),
                                  cv.Container(
                                    // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                    // color: PdfColors.white,
                                    width: 130,
                                    child: cv.Column(
                                      children: [
                                        ...List.generate(
                                          referencesList.length,
                                          (index) => cv.Column(
                                            children: [
                                              cv.Row(
                                                children: [
                                                  cv.SizedBox(
                                                    width: 10,
                                                  ),
                                                  cv.Text(
                                                      '${referencesList[index].txtFullName!.text}/',
                                                      style: const cv.TextStyle(
                                                          color:
                                                              PdfColors.white)),
                                                  cv.Text(
                                                      referencesList[index]
                                                          .txtPositionTitle!
                                                          .text,
                                                      style: const cv.TextStyle(
                                                          color:
                                                              PdfColors.white)),
                                                ],
                                              ),
                                              cv.Text(
                                                  referencesList[index]
                                                      .txtCompanyName!
                                                      .text,
                                                  style: const cv.TextStyle(
                                                      color:
                                                      PdfColors.white)),
                                              cv.Text(
                                                  'Phone:${referencesList[index].txtPhoneNumber!.text}',
                                                  style: const cv.TextStyle(
                                                      color:
                                                      PdfColors.white)),
                                              cv.SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  cv.SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                          //TODO TWO
                          cv.Column(
                            children: [
                              cv.Row(
                                children: [
                                  cv.SizedBox(
                                    width: 10,
                                  ),
                                  cv.Text('Expirations',
                                      style: cv.TextStyle(
                                          fontWeight: cv.FontWeight.bold,
                                          fontSize: 15,
                                          color: PdfColors.black)),
                                ],
                              ),
                              cv.Row(
                                children: [
                                  cv.Container(
                                    width: 150,
                                    child: cv.Divider(color: PdfColors.black),
                                  ),
                                ],
                              ),
                              cv.Container(
                                // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                // color: PdfColors.white,
                                // width: 130,
                                child: cv.Column(
                                  children: [
                                    ...List.generate(
                                      experienceList.length,
                                      (index) => cv.Column(
                                        crossAxisAlignment:
                                            cv.CrossAxisAlignment.start,
                                        children: [
                                          cv.Row(
                                            children: [
                                              cv.SizedBox(
                                                width: 10,
                                              ),
                                              cv.Text(
                                                  '${experienceList[index].txtPosition!.text}  /',
                                                  style: cv.TextStyle(
                                                      color: PdfColors.black,
                                                      fontWeight:
                                                          cv.FontWeight.bold)),
                                              cv.SizedBox(
                                                width: 5,
                                              ),
                                              cv.Text(
                                                  '${experienceList[index].txtStartYear!.text}-${experienceList[index].txtEndYear!.text}',
                                                  style: const cv.TextStyle(
                                                    color: PdfColors.black,
                                                  )),
                                            ],
                                          ),
                                          cv.Row(
                                            children: [
                                              cv.SizedBox(
                                                width: 10,
                                              ),
                                              cv.Text(
                                                  experienceList[index]
                                                      .txtCompany!
                                                      .text,
                                                  style: const cv.TextStyle(
                                                    color: PdfColors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              cv.SizedBox(
                                height: 10,
                              ),
                              //Todo Education
                              cv.Column(
                                children: [
                                  cv.Row(
                                    children: [
                                      cv.SizedBox(
                                        width: 10,
                                      ),
                                      cv.Text('Education',
                                          style: cv.TextStyle(
                                              fontWeight: cv.FontWeight.bold,
                                              fontSize: 15,
                                              color: PdfColors.black)),
                                    ],
                                  ),
                                  cv.Row(
                                    children: [
                                      cv.Container(
                                        width: 150,
                                        child:
                                            cv.Divider(color: PdfColors.black),
                                      ),
                                    ],
                                  ),
                                  cv.Container(
                                    // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                    // color: PdfColors.white,
                                    // width: 130,
                                    child: cv.Column(
                                      children: [
                                        ...List.generate(
                                          educationList.length,
                                          (index) => cv.Column(
                                            crossAxisAlignment:
                                                cv.CrossAxisAlignment.start,
                                            children: [
                                              cv.Row(
                                                children: [
                                                  cv.SizedBox(
                                                    width: 10,
                                                  ),
                                                  cv.Text(
                                                      '${educationList[index].txtlevel!.text}  /',
                                                      style: cv.TextStyle(
                                                          color:
                                                              PdfColors.black,
                                                          fontWeight: cv
                                                              .FontWeight
                                                              .bold)),
                                                  cv.SizedBox(
                                                    width: 5,
                                                  ),
                                                  cv.Text(
                                                      '${educationList[index].txtstartYear!.text}-${educationList[index].txtendYear!.text}',
                                                      style: const cv.TextStyle(
                                                        color: PdfColors.black,
                                                      )),
                                                ],
                                              ),
                                              cv.Row(
                                                children: [
                                                  cv.SizedBox(
                                                    width: 10,
                                                  ),
                                                  cv.Text(
                                                      educationList[index]
                                                          .txtschool!
                                                          .text,
                                                      style: const cv.TextStyle(
                                                        color: PdfColors.black,
                                                      )),
                                                  cv.Text(
                                                      educationList[index]
                                                          .txtgrade!
                                                          .text,
                                                      style: const cv.TextStyle(
                                                        color: PdfColors.black,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  cv.SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              //TODO Certificate
                              cv.Column(
                                children: [
                                  cv.Row(
                                    children: [
                                      cv.SizedBox(
                                        width: 10,
                                      ),
                                      cv.Text('Certificate',
                                          style: cv.TextStyle(
                                              fontWeight: cv.FontWeight.bold,
                                              fontSize: 15,
                                              color: PdfColors.black)),
                                    ],
                                  ),
                                  cv.Row(
                                    children: [
                                      cv.Container(
                                        width: 150,
                                        child:
                                            cv.Divider(color: PdfColors.black),
                                      ),
                                    ],
                                  ),
                                  cv.Container(
                                    // padding: cv.EdgeInsets.symmetric(horizontal: 10),
                                    // color: PdfColors.white,
                                    // width: 130,
                                    child: cv.Column(
                                      children: [
                                        ...List.generate(
                                          certificateList.length,
                                          (index) => cv.Column(
                                            crossAxisAlignment:
                                                cv.CrossAxisAlignment.start,
                                            children: [
                                              cv.Row(
                                                children: [
                                                  cv.SizedBox(
                                                    width: 10,
                                                  ),
                                                  cv.Text(
                                                      '${certificateList[index].txtCertificateName!.text}  /',
                                                      style: cv.TextStyle(
                                                          color:
                                                              PdfColors.black,
                                                          fontWeight: cv
                                                              .FontWeight
                                                              .bold)),
                                                  cv.SizedBox(
                                                    width: 5,
                                                  ),
                                                  cv.Text(
                                                      '${certificateList[index].txtCertificationYear!.text}',
                                                      style: const cv.TextStyle(
                                                        color: PdfColors.black,
                                                      )),
                                                ],
                                              ),
                                              cv.Row(
                                                children: [
                                                  cv.SizedBox(
                                                    width: 10,
                                                  ),
                                                  cv.Text(
                                                      certificateList[index]
                                                          .txtInstituteName!
                                                          .text,
                                                      style: const cv.TextStyle(
                                                        color: PdfColors.black,
                                                        fontSize: 10,
                                                      )),
                                                  // cv.Text(
                                                  //     educationList[index].txtgrade!.text,
                                                  //     style: const cv.TextStyle(
                                                  //       color: PdfColors.black,
                                                  //     )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  cv.SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
  return pdf.save();
}
