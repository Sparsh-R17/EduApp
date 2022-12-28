import 'dart:ui';

import 'models/user.dart';
import 'models/teacher.dart';

List<User> userData = [
  User(
    email: 'ap@gmail.com',
    name: 'AP',
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
