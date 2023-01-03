import 'dart:ui';

import 'models/user.dart';
import 'models/teacher.dart';
import 'models/institute.dart';

List<User> userData = [
  User(
    email: 'ap@gmail.com',
    name: 'AP',
    pass: 'pass',
  ),
  User(
    email: 'saa@gmail.com',
    name: 'SAA',
    pass: 'pass',
  ),
  User(
    email: 'csv@gmail.com',
    name: 'CSV',
    pass: 'pass',
  ),
  User(
    email: 'sp@gmail.com',
    name: 'SP',
    pass: 'pass',
  ),
  User(
    email: 'spa@gmail.com',
    name: 'SPA',
    pass: 'pass',
  ),
];

List<Teacher> teacherData = [
  Teacher(
    name: 'Cassie Valdez',
    subject: 'Biology',
    color: const Color(0xffCF687D),
    pic: 'assets/Images/teacher_1_CF687D.png',
  ),
  Teacher(
    name: 'Paul Simons',
    subject: 'Chemistry',
    color: const Color(0xff413535),
    pic: 'assets/Images/teacher_2_413535.png',
  ),
  Teacher(
    name: 'Graham Osbor',
    subject: 'Physics',
    color: const Color(0xffe7e7e7),
    pic: 'assets/Images/teacher_3_E7E7E7.png',
  ),
  Teacher(
    name: 'Veer Cope',
    subject: 'Bio Science',
    color: const Color(0xffb77e6b),
    pic: 'assets/Images/teacher_4_B77E6B.png',
  ),
];

final List<String> stateName = [
  'Andhra Pradesh',
  'Arunachal Pradesh',
  ' Assam',
  'Bihar',
  'Chhattisgarh',
  'Goa',
  'Gujarat',
  'Haryana',
  'Himachal Pradesh',
  'Jammu Kashmir',
  'Jharkhand',
  'Karnataka',
  'Kerala',
  'Madhya Pradesh',
  'Maharashtra',
  'Manipur',
  'Meghalaya',
  'Mizoram',
  'Nagaland',
  'Odisha',
  'Punjab',
  'Rajasthan',
  'Sikkim',
  'Tamil Nadu',
  'Telangana',
  'Tripura',
  'Uttar Pradesh',
  'Uttarakhand',
];

List<Institute> instituteData = [
  Institute(
    name: "Victory College",
    star: [4.5, 413],
    field: "Bio Science",
    desc:
        "Studying how CBD awareness and availability as it related to pain management alternatives",
    pic: "assets/Images/institute_1_DDE1FF.png",
    color: const Color(0xffdde1ff),
  ),
  Institute(
    name: "New Montana",
    star: [4.0, 354],
    field: "Bio Science",
    desc:
        "Montant Higher Educational Institute. Gampaha montana.gampaha@gmail.com",
    pic: "assets/Images/institute_2_FF9F92.png",
    color: const Color(0xffff9f92),
  ),
  Institute(
    name: "Susipwan Institute",
    star: [3.5, 745],
    field: "Bio Science",
    desc:
        "This is a private higher education center which conducting classes for GCE AL Students.",
    pic: "assets/Images/institute_3_BFDDEC.png",
    color: const Color(0xffbfddec),
  ),
];
