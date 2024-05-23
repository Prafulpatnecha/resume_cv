import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

GlobalKey<FormState> personalkey=GlobalKey();
ImagePicker imagePicker=ImagePicker();
File? fileimage;
AssetImage profileImage=const AssetImage('assets/img/profile.png');
//Todo Contact Tab
List socialList=[];
class SocialModal
{
  TextEditingController? platform;
  TextEditingController? username;
  TextEditingController? profileUrl;
  SocialModal({this.platform,this.profileUrl,this.username});
}
TextEditingController txtname=TextEditingController();
TextEditingController txtposition=TextEditingController();
TextEditingController txtAboutme=TextEditingController();
TextEditingController txtemail=TextEditingController();
TextEditingController txtphone=TextEditingController();
TextEditingController txtaddress=TextEditingController();
TextEditingController txtwebsite=TextEditingController();
//Todo Education Tab
List<EducationModal> educationList=[];
class EducationModal
{
  TextEditingController? txtschool;
  TextEditingController? txtlevel;
  TextEditingController? txtgrade;
  TextEditingController? txtstartYear;
  TextEditingController? txtendYear;
  EducationModal({this.txtendYear,this.txtgrade,this.txtlevel,this.txtschool,this.txtstartYear});
}
TextEditingController txtschool=TextEditingController();
TextEditingController txtlevel=TextEditingController();
TextEditingController txtgrade=TextEditingController();
TextEditingController txtstartYear=TextEditingController();
TextEditingController txtendYear=TextEditingController();
//Todo Experience Tab
TextEditingController txtCompany=TextEditingController();
TextEditingController txtPosition=TextEditingController();
TextEditingController txtJob =TextEditingController();
TextEditingController txtStartYear=TextEditingController();
TextEditingController txtEndYear=TextEditingController();
TextEditingController txtSummaryExperience=TextEditingController();
List<ExperienceModal> experienceList=[];
class ExperienceModal
{
  TextEditingController? txtCompany;
  TextEditingController? txtPosition;
  TextEditingController? txtJob;
  TextEditingController? txtStartYear;
  TextEditingController? txtEndYear;
  TextEditingController? txtSummaryExperience;
  ExperienceModal({this.txtCompany,this.txtEndYear,this.txtJob,this.txtPosition,this.txtStartYear,this.txtSummaryExperience});
}
//Todo Certificate Tab
TextEditingController txtCertificateName=TextEditingController();
TextEditingController txtInstituteName=TextEditingController();
TextEditingController txtCertificationYear =TextEditingController();
TextEditingController txtSummary=TextEditingController();
List<CertificateModal> certificateList=[];
class CertificateModal
{
  TextEditingController? txtCertificateName;
  TextEditingController? txtInstituteName;
  TextEditingController? txtCertificationYear;
  TextEditingController? txtSummary;
  CertificateModal({this.txtCertificateName,this.txtCertificationYear,this.txtInstituteName,this.txtSummary,});
}
//Todo Language Tab
List<LanguageModal> languageList=[];
TextEditingController txtLanguage=TextEditingController();
class LanguageModal
{
  TextEditingController? txtLanguage;
  LanguageModal({this.txtLanguage});
}
//Todo Skills Tab
List<SkillsModal> skillsList=[];
TextEditingController txtSkills=TextEditingController();
TextEditingController txtExperience=TextEditingController();
class SkillsModal
{
TextEditingController? txtExperience;
  TextEditingController? txtSkills;
  SkillsModal({this.txtSkills,this.txtExperience});
}
//Todo References Tab
TextEditingController txtFullName=TextEditingController();
TextEditingController txtPositionTitle=TextEditingController();
TextEditingController txtCompanyName=TextEditingController();
TextEditingController txtPhoneNumber=TextEditingController();
TextEditingController txtEmailAddress=TextEditingController();
List<ReferencesModal> referencesList=[];
class ReferencesModal
{
  TextEditingController? txtFullName;
  TextEditingController? txtPositionTitle;
  TextEditingController? txtCompanyName;
  TextEditingController? txtPhoneNumber;
  TextEditingController? txtEmailAddress;
  ReferencesModal({this.txtCompanyName,this.txtEmailAddress,this.txtFullName,this.txtPhoneNumber,this.txtPositionTitle});
}